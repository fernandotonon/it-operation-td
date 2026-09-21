#!/usr/bin/env bash
# Operação TI - QtMeshEditor: reference image -> game-ready static GLB (TRELLIS.2 backend).
#
#   scripts/generate-models.sh                      # every assets/source-images/*.png without a model
#   scripts/generate-models.sh server_rack switch   # only these ids
#   PRESET=high scripts/generate-models.sh ups      # another quality preset (default: fast, see below)
#   MATTING=fast scripts/generate-models.sh ups     # U²-Net matte instead of BiRefNet (default: best)
#   OUT_ROOT=assets/exported-best scripts/generate-models.sh   # write into another folder (staging)
#
# Quality: PRESET fast (512 cascade) is the default on this machine - the balanced/high cascades
# stall in a Metal command buffer on a 24 GB Apple Silicon Mac (documented in the School Adventure
# project). Props get 8 000 triangles / 1024 px textures, characters 20 000 / 2048.
# Output per model: assets/exported/<id>/<id>.glb + .material + PBR PNGs. The generation sidecar
# (<id>_source.qtm3d, ~20 MB) goes to assets/qtmesh-projects/sources/ (gitignored).
#
# Input matting (MATTING=best, default): the ORIGINAL image goes to QtMeshEditor's high-quality background
# remover (`--matting best`, BiRefNet 1024², ~930 MB downloaded on first use); it also drops the soft
# shadow / reflection under the object, which is what used to become a base slab. MATTING=fast keeps the
# old path: RGBA sources as-is, RGB sources through scripts/prematte.py.
set -uo pipefail
cd "$(dirname "$0")/.."
export QTMESH_NO_TELEMETRY=1
export QTMESH_TRELLIS2_CLI="${QTMESH_TRELLIS2_CLI:-$HOME/trellis.cpp/build-cpu/trellis-cli}"
export QTMESH_TRELLIS2_CLI_MODELS="${QTMESH_TRELLIS2_CLI_MODELS:-$HOME/trellis.cpp/models}"
Q="${QTMESH:-/opt/homebrew/bin/qtmesh}"
CHARACTERS=" tech_helmet tech_headset tech_polo "
WATCHDOG_MIN="${WATCHDOG_MIN:-25}"
STALL_SEC="${STALL_SEC:-480}"
FALLBACK_PRESETS="${FALLBACK_PRESETS-}"
echo "using $Q ($($Q --version 2>/dev/null | head -1)), trellis-cli $QTMESH_TRELLIS2_CLI, preset ${PRESET:-fast}, matting ${MATTING:-best}, out ${OUT_ROOT:-assets/exported}"

OUT_ROOT="${OUT_ROOT:-assets/exported}"
MATTING="${MATTING:-best}"
mkdir -p "$OUT_ROOT" assets/qtmesh-projects/{sources,logs,matted,flat}
if [ $# -gt 0 ]; then ids=("$@"); else
    ids=(); for f in assets/source-images/*.png; do ids+=("$(basename "${f%.png}")"); done
fi

run_with_watchdog() {
    local minutes="$1" logfile="$2"; shift 2
    "$@" &
    local pid=$!
    local waited=0 quiet=0 last_size=-1
    while kill -0 "$pid" 2>/dev/null; do
        sleep 10; waited=$((waited + 10))
        local size; size=$(stat -f %z "$logfile" 2>/dev/null || echo 0)
        if [ "$size" = "$last_size" ]; then quiet=$((quiet + 10)); else quiet=0; last_size="$size"; fi
        if [ $quiet -ge "$STALL_SEC" ] || [ $waited -ge $((minutes * 60)) ]; then
            echo "watchdog: no output for ${quiet}s (ran ${waited}s), killing generate3d" >&2
            kill "$pid" 2>/dev/null; sleep 2; kill -9 "$pid" 2>/dev/null
            pkill -f "trellis-cli" 2>/dev/null
            return 124
        fi
    done
    wait "$pid"; return $?
}

has_alpha_matte() {  # RGBA image whose border is transparent
    python3 - "$1" <<'PY'
import sys; from PIL import Image
im = Image.open(sys.argv[1])
if im.mode != "RGBA": sys.exit(1)
a = im.getchannel("A"); w, h = im.size
border = [a.getpixel((x, y)) for x in range(0, w, 8) for y in (0, h - 1)] + [a.getpixel((x, y)) for y in range(0, h, 8) for x in (0, w - 1)]
sys.exit(0 if max(border) < 40 else 1)
PY
}

for id in "${ids[@]}"; do
    img="assets/source-images/$id.png"
    dir="$OUT_ROOT/$id"; out="$dir/$id.glb"; log="assets/qtmesh-projects/logs/$id.log"
    [ -f "$img" ] || { echo "SKIP $id (no image)"; continue; }
    [ -s "$out" ] && { echo "SKIP $id (exists)"; continue; }
    if [[ "$CHARACTERS" == *" $id "* ]]; then tris="${TRIS:-20000}"; tex="${TEXSIZE:-2048}"
    else tris="${TRIS:-8000}"; tex="${TEXSIZE:-1024}"; fi
    mkdir -p "$dir"; S=$(date +%s)
    mattflag=""
    if [ "$MATTING" = "best" ]; then
        # TRELLIS.2 skips matting when the input already has an alpha channel: flatten RGBA sources first
        input="assets/qtmesh-projects/flat/$id.png"; mkdir -p assets/qtmesh-projects/flat
        python3 scripts/flatten-alpha.py "$img" "$input" >> "$log" 2>&1
        mattflag="--matting best"; echo "$id: BiRefNet matting of the flattened original" >> "$log"
    elif has_alpha_matte "$img"; then
        input="$img"; echo "$id: source already matted (RGBA)" >> "$log"
    else
        input="assets/qtmesh-projects/matted/$id.png"
        python3 scripts/prematte.py "$img" "$input" >> "$log" 2>&1
    fi
    rc=1
    for preset in "${PRESET:-fast}" $FALLBACK_PRESETS; do
        echo "== $id: preset $preset, $tris tris, ${tex}px ($(date '+%H:%M:%S'))" | tee -a "$log"
        run_with_watchdog "$WATCHDOG_MIN" "$log" "$Q" generate3d "$input" -o "$out" --backend trellis2 --preset "$preset" \
            --target-tris "$tris" --texture-size "$tex" $mattflag --seed "${SEED:-42}" >> "$log" 2>&1
        rc=$?
        [ $rc -eq 0 ] && [ -s "$out" ] && { echo "$preset" > "$dir/.preset"; break; }
        echo "-- $id: preset $preset failed (rc=$rc)" | tee -a "$log"
        rm -f "$out"
    done
    if [ $rc -eq 0 ] && [ -s "$out" ]; then
        mv "$dir/${id}_source.qtm3d" assets/qtmesh-projects/sources/ 2>/dev/null || true
        python3 scripts/resize-textures.py "$dir" "$tex" >> "$log" 2>&1
        echo "OK   $id $(( $(date +%s) - S ))s preset=$(cat "$dir/.preset") tris=$tris tex=$tex"
    else
        echo "FAIL $id rc=$rc (see $log)"; rmdir "$dir" 2>/dev/null
    fi
done
