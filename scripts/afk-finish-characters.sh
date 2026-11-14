#!/usr/bin/env bash
# Wait for a generate-and-rig batch to finish, then import + QA + rebuild trailer.
#   scripts/afk-finish-characters.sh <batch.log> id1 id2 ...
set -uo pipefail
cd "$(dirname "$0")/.."
LOG="${1:?}"; shift
IDS=("$@")
echo "== waiting for batch $LOG (${#IDS[@]} ids) =="
# Generator prints OK/FAIL per id; rig workers print RIG-OK/RIG-FAIL/RIG-SKIP; queues print RIG-QUEUE DONE.
while true; do
  done_n=0
  for id in "${IDS[@]}"; do
    if grep -qE "^(RIG-OK|RIG-FAIL|RIG-SKIP) $id" "$LOG" "${LOG%.log}"-rig*.log 2>/dev/null; then
      done_n=$((done_n + 1))
    elif grep -q "^FAIL $id " "$LOG" 2>/dev/null; then
      # gen failed and rig-queue may not have logged yet
      if grep -q "RIG-SKIP $id" "${LOG%.log}"-rig*.log 2>/dev/null; then done_n=$((done_n + 1)); fi
    fi
  done
  queues=$(grep -c "RIG-QUEUE DONE" "${LOG%.log}"-rig*.log 2>/dev/null || echo 0)
  echo "  progress: rig-settled=$done_n/${#IDS[@]} queues_done=$queues $(date '+%H:%M:%S')"
  # Also treat as done when generator finished all ids AND every rig log has RIG-QUEUE DONE
  gen_done=0
  for id in "${IDS[@]}"; do
    grep -qE "^(OK|FAIL)   $id |^FAIL $id " "$LOG" 2>/dev/null && gen_done=$((gen_done + 1)) || true
    grep -qE "^OK   $id |^FAIL $id " "$LOG" 2>/dev/null && true
  done
  # Count OK+FAIL in generator log
  ok=$(grep -cE '^OK   ' "$LOG" 2>/dev/null || echo 0)
  fail=$(grep -cE '^FAIL ' "$LOG" 2>/dev/null || echo 0)
  # Prefer queue-done signal from all rig workers
  n_rig_logs=$(ls "${LOG%.log}"-rig*.log 2>/dev/null | wc -l | tr -d ' ')
  n_queue_done=$(grep -l "RIG-QUEUE DONE" "${LOG%.log}"-rig*.log 2>/dev/null | wc -l | tr -d ' ')
  if [ "$n_rig_logs" -gt 0 ] && [ "$n_queue_done" -eq "$n_rig_logs" ]; then
    echo "  all rig queues done"
    break
  fi
  # Safety: if generator has settled every id and no rig process is running for 2 min
  if [ $((ok + fail)) -ge ${#IDS[@]} ]; then
    if ! pgrep -f 'rig-character.sh|rig-queue.sh|generate-models.sh' >/dev/null 2>&1; then
      echo "  generator+rig processes gone"
      break
    fi
  fi
  sleep 60
done

echo "== import runtime =="
FORCE=1 bash scripts/import-all.sh "${IDS[@]}" 2>&1 | tee "${LOG%.log}-import.log"

echo "== turntable QA =="
mkdir -p docs/screenshots/characters
Q="${QTMESH:-/opt/homebrew/bin/qtmesh}"
: > "${LOG%.log}-qa.txt"
for id in "${IDS[@]}"; do
  glb="assets/rigged/$id/${id}_rigged.glb"
  [ -s "$glb" ] || glb="assets/exported/$id/${id}_trim.glb"
  [ -s "$glb" ] || glb="assets/exported/$id/$id.glb"
  if [ ! -s "$glb" ]; then echo "QA-MISS $id" | tee -a "${LOG%.log}-qa.txt"; continue; fi
  out="docs/screenshots/characters/$id.png"
  if "$Q" turntable "$glb" --studio -o "$out" --frames 8 --size 512x512 >/dev/null 2>&1; then
    echo "QA-OK $id -> $out" | tee -a "${LOG%.log}-qa.txt"
  else
    echo "QA-FAIL $id turntable" | tee -a "${LOG%.log}-qa.txt"
  fi
  # Character validation when rigged
  if [ -f "scripts/validate-character.py" ] && [[ "$id" == staff_* ]]; then
    python3 scripts/validate-character.py "$id" >> "${LOG%.log}-qa.txt" 2>&1 || true
  fi
done

echo "== rebuild trailer =="
rm -f docs/marketing/clips/*.mp4
# Force re-render of title/stages that show staff, keep match cached if present
rm -f docs/marketing/frames/00_title.png docs/marketing/frames/01_stages.png docs/marketing/frames/06_victory.png
SKIP_RENDER=1 bash scripts/marketing-video.sh "${CLAYRENDER:-$HOME/clayground/build/bin/clayrender}" 2>&1 | tee "${LOG%.log}-trailer.log"
# title was deleted so SKIP won't help those — re-run without skip for missing stills only
# marketing-video already re-renders missing files when SKIP_RENDER checks -f

echo "== summary =="
echo "generated OK: $(grep -cE '^OK   ' "$LOG" || true)"
echo "generated FAIL: $(grep -cE '^FAIL ' "$LOG" || true)"
grep -E '^RIG-' "${LOG%.log}"-rig*.log 2>/dev/null | sort || true
grep -E '^QA-' "${LOG%.log}-qa.txt" 2>/dev/null || true
ls -lh docs/marketing/gameplay-trailer.mp4 2>/dev/null || true
echo "AFK-FINISH DONE"
