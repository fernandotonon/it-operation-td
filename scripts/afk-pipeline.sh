#!/usr/bin/env bash
# AFK: generate + rig pending staff, then props, import, QA, rebuild trailer.
set -uo pipefail
cd "$(dirname "$0")/.."

export QTMESH_ONNX_PREFER_GPU=0
unset TRIS TEXSIZE
export PRESET="${PRESET:-fast}"
export MATTING="${MATTING:-best}"

STAFF=(staff_06 staff_07 staff_10 staff_12 staff_13 staff_15 staff_17 staff_22 staff_23 staff_24
       staff_25 staff_26 staff_27 staff_30 staff_31 staff_32 staff_35 staff_38 staff_39 staff_40
       staff_42 staff_47 staff_51 staff_52 staff_57)
PROPS=(heart reception workstation)

LOG="assets/qtmesh-projects/logs/batch-staff-$(date +%Y%m%d-%H%M%S).log"
mkdir -p assets/qtmesh-projects/logs docs/screenshots/characters docs/screenshots/props
echo "$LOG" > /tmp/afk-batch-logpath.txt
exec > >(tee -a /tmp/afk-pipeline.log) 2>&1
echo "AFK pipeline start $(date) log=$LOG staff=${#STAFF[@]} props=${#PROPS[@]}"

count_matches() {
  local pat=$1; shift
  local n=0 f
  for f in "$@"; do
    [ -f "$f" ] || continue
    n=$((n + $(grep -cE "$pat" "$f" 2>/dev/null || true)))
  done
  echo "$n"
}

echo "== generate + rig staff =="
bash scripts/generate-and-rig.sh "$LOG" 1 "${STAFF[@]}"

# Wait for generator to settle (OK or FAIL for every id)
while true; do
  ok=$(count_matches '^OK   ' "$LOG")
  fail=$(count_matches '^FAIL ' "$LOG")
  echo "  gen $((ok + fail))/${#STAFF[@]} (ok=$ok fail=$fail) $(date +%H:%M:%S)"
  if [ $((ok + fail)) -ge ${#STAFF[@]} ]; then break; fi
  if ! pgrep -f 'scripts/generate-models.sh' >/dev/null 2>&1; then
    sleep 45
    if ! pgrep -f 'scripts/generate-models.sh' >/dev/null 2>&1; then
      echo "  generate-models exited early"
      break
    fi
  fi
  sleep 60
done
echo "generator settled $(date)"

# Wait for rig queue
for _ in $(seq 1 240); do
  if grep -q 'RIG-QUEUE DONE' "${LOG%.log}-rig0.log" 2>/dev/null; then
    echo "rig queue done"; break
  fi
  if ! pgrep -f 'rig-queue.sh|rig-character.sh' >/dev/null 2>&1; then
    sleep 30
    if ! pgrep -f 'rig-queue.sh|rig-character.sh' >/dev/null 2>&1; then
      echo "rig processes gone"; break
    fi
  fi
  rigok=$(count_matches '^RIG-OK ' "${LOG%.log}-rig0.log")
  echo "  rig settled=$rigok/${#STAFF[@]} $(date +%H:%M:%S)"
  sleep 60
done
echo "rig settled $(date)"

echo "== generate props =="
TRIS=8000 TEXSIZE=1024 scripts/generate-models.sh "${PROPS[@]}" | tee assets/qtmesh-projects/logs/batch-props.log

echo "== import =="
FORCE=1 bash scripts/import-all.sh "${STAFF[@]}" "${PROPS[@]}" | tee "${LOG%.log}-import.log"

echo "== turntable QA =="
Q="${QTMESH:-/opt/homebrew/bin/qtmesh}"
: > "${LOG%.log}-qa.txt"
for id in "${STAFF[@]}" "${PROPS[@]}"; do
  glb="assets/rigged/$id/${id}_rigged.glb"
  [ -s "$glb" ] || glb="assets/exported/$id/${id}_trim.glb"
  [ -s "$glb" ] || glb="assets/exported/$id/$id.glb"
  if [ ! -s "$glb" ]; then
    echo "QA-MISS $id" | tee -a "${LOG%.log}-qa.txt"
    continue
  fi
  if [[ "$id" == staff_* ]]; then dest="docs/screenshots/characters/$id.png"
  else dest="docs/screenshots/props/$id.png"; fi
  if "$Q" turntable "$glb" --studio -o "$dest" --frames 8 --size 512x512 >/dev/null 2>&1; then
    echo "QA-OK $id -> $dest" | tee -a "${LOG%.log}-qa.txt"
  else
    echo "QA-FAIL $id" | tee -a "${LOG%.log}-qa.txt"
  fi
done

echo "== rebuild trailer =="
rm -f docs/marketing/clips/*.mp4
rm -f docs/marketing/frames/00_title.png docs/marketing/frames/01_stages.png docs/marketing/frames/06_victory.png
SKIP_RENDER=1 bash scripts/marketing-video.sh "${CLAYRENDER:-$HOME/clayground/build/bin/clayrender}" \
  | tee "${LOG%.log}-trailer.log"

echo "== summary =="
echo "gen OK: $(count_matches '^OK   ' "$LOG")  FAIL: $(count_matches '^FAIL ' "$LOG")"
grep -E '^RIG-' "${LOG%.log}-rig0.log" 2>/dev/null | sort || true
grep -E '^QA-' "${LOG%.log}-qa.txt" 2>/dev/null || true
ls -lh docs/marketing/gameplay-trailer.mp4 || true
echo "AFK-PIPELINE DONE $(date)"
