#!/usr/bin/env bash
# Rig characters as soon as their GLB appears in a generation batch log (runs beside the generator).
#   scripts/rig-queue.sh <batch.log> <exported root> id1 id2 ...
# For each id: wait for "OK   <id>" (or FAIL) in the log, trim the base (2 cm), rig with UniRig
# (scripts/rig-character.sh, IN_ROOT = exported root). Prints one line per id.
set -uo pipefail
cd "$(dirname "$0")/.."
LOG="$1"; ROOT="$2"; shift 2
for id in "$@"; do
    until grep -q "^OK   $id " "$LOG" 2>/dev/null || grep -q "^FAIL $id " "$LOG" 2>/dev/null; do sleep 20; done
    if grep -q "^FAIL $id " "$LOG"; then echo "RIG-SKIP $id (generation failed)"; continue; fi
    python3 scripts/trim-base.py "$ROOT/$id/$id.glb" "$ROOT/$id/${id}_trim.glb" --trim 0.02 > /dev/null 2>&1
    rm -rf "assets/rigged/$id"
    if IN_ROOT="$ROOT" scripts/rig-character.sh "$id" > "assets/qtmesh-projects/logs/rig_$id.log" 2>&1; then
        echo "RIG-OK $id $(grep -c -E '^  (Idle|Typing|Cheer)' "assets/qtmesh-projects/logs/rig_$id.log") clips"
    else echo "RIG-FAIL $id (see assets/qtmesh-projects/logs/rig_$id.log)"; fi
done
echo "RIG-QUEUE DONE"
