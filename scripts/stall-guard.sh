#!/usr/bin/env bash
# External stall guard for a running generate-models.sh batch: if the log of the model currently being
# generated has not changed for STALL_SEC seconds, kill trellis-cli and the qtmesh generate3d process so the
# batch records a FAIL and continues.   scripts/stall-guard.sh <batch.log> [STALL_SEC=600]
set -u
cd "$(dirname "$0")/.."
BATCH="$1"; STALL="${2:-600}"
while pgrep -f "scripts/generate-models.sh" > /dev/null; do
    id=$(grep -E "^== " "$BATCH" | tail -1 | sed -E 's/^== ([a-z_0-9]+):.*/\1/')
    log="assets/qtmesh-projects/logs/$id.log"
    if [ -n "$id" ] && [ -f "$log" ]; then
        age=$(( $(date +%s) - $(stat -f %m "$log") ))
        if [ "$age" -ge "$STALL" ] && pgrep -f "generate3d" > /dev/null; then
            echo "$(date '+%H:%M:%S') stall-guard: $id log idle for ${age}s - killing generator"
            pkill -9 -f "trellis-cli"; sleep 1; pkill -9 -f "qtmesh generate3d"; sleep 15
        fi
    fi
    sleep 30
done
echo "stall-guard: batch finished"
