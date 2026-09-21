#!/usr/bin/env bash
# Generate a list of character ids and rig them as they land, with an external stall guard.
#   scripts/generate-and-rig.sh <batch.log> <rig workers> id1 id2 ...
# Rig workers take ids round-robin (UniRig is CPU-bound, generation is GPU-bound, so they overlap well).
set -uo pipefail
cd "$(dirname "$0")/.."
LOG="$1"; WORKERS="$2"; shift 2
ids=("$@")
: > "$LOG"
nohup env PRESET=fast FALLBACK_PRESETS="" scripts/generate-models.sh "${ids[@]}" >> "$LOG" 2>&1 &
sleep 2
nohup scripts/stall-guard.sh "$LOG" 600 > "${LOG%.log}-guard.log" 2>&1 &
for ((w = 0; w < WORKERS; w++)); do
    part=(); for ((i = w; i < ${#ids[@]}; i += WORKERS)); do part+=("${ids[$i]}"); done
    nohup scripts/rig-queue.sh "$LOG" assets/exported "${part[@]}" > "${LOG%.log}-rig$w.log" 2>&1 &
done
echo "started: generator + $WORKERS rig worker(s) + stall guard for ${#ids[@]} ids -> $LOG"
