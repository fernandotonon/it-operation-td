#!/usr/bin/env bash
# Stage fresh geometry, skeletons, skin and Kimodo clips sequentially to bound GPU/RAM use.
set -euo pipefail
export TRELLIS_VERBOSE=1
export QTMESH_TRELLIS2_CLI="${QTMESH_TRELLIS2_CLI:-/Applications/QtMeshEditor.app/Contents/MacOS/trellis-cli}"
cd "$(dirname "$0")/.."
ROOT="assets/character-refresh"
mkdir -p "$ROOT/logs"
ids=(tech_headset tech_helmet tech_polo staff_02 staff_05)
for id in "${ids[@]}"; do
    dir="$ROOT/exported/$id"; mkdir -p "$dir"
    if [ ! -s "$dir/$id.glb" ]; then
        python3 scripts/flatten-alpha.py "assets/source-images/$id.png" "$ROOT/$id-flat.png"
        QTMESH_NO_TELEMETRY=1 /opt/homebrew/bin/qtmesh generate3d "$ROOT/$id-flat.png" -o "$dir/$id.glb" \
            --backend trellis2 --preset "${PRESET:-balanced}" --target-tris 20000 --texture-size 2048 \
            --matting best --no-source --seed 42 > "$ROOT/logs/$id-generation.log" 2>&1
    fi
    IN_ROOT="$ROOT/exported" RIG_ROOT="$ROOT/rigged" bash scripts/rig-character.sh "$id" > "$ROOT/logs/$id-rig-animation.log" 2>&1
    echo "READY $id $(date -u +%FT%TZ)"
done
