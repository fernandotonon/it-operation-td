#!/usr/bin/env bash
# UniRig skeleton -> SkinTokens weights -> Kimodo Idle / Typing / Cheer.
# IN_ROOT and RIG_ROOT allow staging a refresh without replacing playable assets.
set -euo pipefail
cd "$(dirname "$0")/.."
export QTMESH_NO_TELEMETRY=1
Q="${QTMESH:-/opt/homebrew/bin/qtmesh}"
# stabilize-cheer-hands.py needs pygltflib (project .venv-assets)
if [ -x .venv-assets/bin/python3 ]; then PY=.venv-assets/bin/python3
elif [ -x .venv/bin/python3 ]; then PY=.venv/bin/python3
else PY=python3; fi
ID="${1:?usage: rig-character.sh character_id}"
IN_ROOT="${IN_ROOT:-assets/exported}"
RIG_ROOT="${RIG_ROOT:-assets/rigged}"
IN="$IN_ROOT/$ID/${ID}_trim.glb"; [ -f "$IN" ] || IN="$IN_ROOT/$ID/$ID.glb"
[ -s "$IN" ] || { echo "missing $IN"; exit 1; }
OUT_DIR="$RIG_ROOT/$ID"; mkdir -p "$OUT_DIR/work"
WORK="$OUT_DIR/work"
if [ ! -s "$WORK/skeleton.glb" ]; then
    "$Q" rig "$IN" --skeleton humanoid --algo unirig --up-axis y -o "$WORK/skeleton.glb" --json
fi
if [ ! -s "$WORK/skinned.glb" ]; then
    "$Q" skin "$WORK/skeleton.glb" --algo skintokens --max-influences 4 -o "$WORK/skinned.glb" --json
fi
CACHE="$RIG_ROOT/motions"; mkdir -p "$CACHE"
prev="$WORK/skinned.glb"
for clip in Idle Typing Cheer; do
    case "$clip" in
        Idle) prompt="A person stands idle in place, breathing gently with a relaxed posture, arms resting naturally at their sides. No walking."; dur=4; hands=relaxed; loop=(--loop --loop-mode auto);;
        Typing) prompt="A human sits at a desk working on a computer, leaning slightly forward and typing on a keyboard with both hands, with small finger and wrist movements. Remain seated in place."; dur=6; hands=auto; loop=(--loop --loop-mode auto);;
        Cheer) prompt="A person celebrates in place with both arms raised overhead. Palms face each other beside the head, thumbs point backward, wrists stay untwisted and natural. Then lower the arms back to a relaxed standing pose. No walking."; dur=4; hands=open; loop=();;
    esac
    next="$WORK/$clip.glb"
    if [ ! -s "$next" ]; then
        key=$(printf '%s' "$prompt|$dur|$hands|${loop[*]-}|42" | shasum -a 256 | cut -d' ' -f1)
        motion_dir="$CACHE/$clip-$key"; mkdir -p "$motion_dir"
        motion="$motion_dir/motion_00.npz"
        if [ -s "$motion" ]; then
            "$Q" anim "$prev" --apply-motion "$motion" --name "$clip" --no-root-motion --hands "$hands" ${loop[@]+"${loop[@]}"} -o "$next" --json | tee "$WORK/$clip-report.json"
        else
            "$Q" anim "$prev" --generate "$prompt" --backend kimodo --runtime native --download \
                --name "$clip" --duration "$dur" --seed 42 --no-root-motion --hands "$hands" ${loop[@]+"${loop[@]}"} -o "$next" --json | tee "$WORK/$clip-report.json"
                    "$PY" - "$WORK/$clip-report.json" "$motion" <<'PYCODE'
import json, shutil, sys
from pathlib import Path
for line in Path(sys.argv[1]).read_text().splitlines():
    if line.startswith('{'):
        report = json.loads(line)
        if report.get('backend') == 'kimodo':
            shutil.copy2(report['source']['files'][0], sys.argv[2])
            Path(sys.argv[2]+'.json').write_text(json.dumps(report, indent=2)+'\n')
            (Path(sys.argv[2]).parent/'result.json').write_text(json.dumps(report['source'], indent=2)+'\n')
            break
else: raise SystemExit('Missing Kimodo provenance report')
PYCODE
        fi
    fi
    prev="$next"
done
"$Q" anim "$prev" --list --json
cp "$prev" "$OUT_DIR/${ID}_rigged.glb"
# Kimodo's overhead Cheer rolls UpperArm ~100° and Hand ~50°; restore idle twists.
"$PY" scripts/stabilize-cheer-hands.py "$OUT_DIR/${ID}_rigged.glb"
# Keep externally referenced PBR maps beside the exported GLB if this backend emits them.
find "$IN_ROOT/$ID" -maxdepth 1 -name '*.png' -exec cp {} "$OUT_DIR/" \;
"$Q" skin "$OUT_DIR/${ID}_rigged.glb" --evaluate --json
