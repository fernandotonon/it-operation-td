#!/usr/bin/env bash
# QtMeshEditor: static technician GLB -> rigged + animated GLB (Idle / Typing / Cheer).
#
#   scripts/rig-character.sh tech_helmet
#   Input : assets/exported/<id>/<id>_trim.glb (or <id>.glb)   Output: assets/rigged/<id>/<id>_rigged.glb
#
# Skeleton: QtMeshEditor's humanoid template, UniRig auto-skin (Pinocchio left the arms unbound on these
# chibi proportions; the references are T-poses for
# this reason). Clips come from the bundled permissive motion library (`qtmesh anim --generate`);
# "working" is the closest thing to typing. Never pass --variant.
set -euo pipefail
cd "$(dirname "$0")/.."
export QTMESH_NO_TELEMETRY=1
Q="${QTMESH:-/opt/homebrew/bin/qtmesh}"
ID="$1"
IN_ROOT="${IN_ROOT:-assets/exported}"          # IN_ROOT=assets/exported-best while a regeneration is staged
IN="$IN_ROOT/$ID/${ID}_trim.glb"; [ -f "$IN" ] || IN="$IN_ROOT/$ID/$ID.glb"
[ -f "$IN" ] || { echo "missing $IN"; exit 1; }
OUT_DIR="assets/rigged/$ID"; mkdir -p "$OUT_DIR"
WORK="$(mktemp -d)"; cp "$IN_ROOT/$ID"/*.png "$WORK/" 2>/dev/null || true

echo "== rig + skin (humanoid, ${ALGO:-unirig})"
"$Q" rig "$IN" --skeleton humanoid --skin --algo "${ALGO:-unirig}" --up-axis y -o "$WORK/r0.glb" --json | tail -1
CLIPS=("idle:Idle:3" "working:Typing:2.4" "cheer:Cheer:2")
prev="$WORK/r0.glb"; i=0
for spec in "${CLIPS[@]}"; do
    IFS=: read -r action clip dur <<<"$spec"; i=$((i+1))
    echo "== generate $action ($dur s)"
    if "$Q" anim "$prev" --generate "$action" --duration "$dur" -o "$WORK/a$i.glb" --json | tail -1; then prev="$WORK/a$i.glb"; else echo "   ($action unavailable, skipped)"; fi
done
for spec in "${CLIPS[@]}"; do
    IFS=: read -r action clip dur <<<"$spec"; i=$((i+1))
    if "$Q" anim "$prev" --rename "generated_$action" "$clip" -o "$WORK/a$i.glb" >/dev/null 2>&1; then prev="$WORK/a$i.glb"; fi
done
cp "$prev" "$OUT_DIR/${ID}_rigged.glb"
cp "${prev%.glb}.material" "$OUT_DIR/${ID}_rigged.material" 2>/dev/null || true
cp "$IN_ROOT/$ID"/*.png "$OUT_DIR/" 2>/dev/null || true
rm -rf "$WORK"
echo "== clips in $OUT_DIR/${ID}_rigged.glb"; "$Q" anim "$OUT_DIR/${ID}_rigged.glb" --list
