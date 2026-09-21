#!/usr/bin/env bash
# Import every exported GLB into a Qt Quick 3D runtime asset (balsam) and refresh the manifest.
#   scripts/import-all.sh            # all assets/exported/*/<id>.glb without a runtime QML
#   scripts/import-all.sh switch ups # only these ids
# Type names get a "Prop" prefix (PropSwitch, PropUps): balsam refuses names that clash with QML types.
# Before the import, scripts/trim-base.py cuts the base slab TRELLIS.2 builds under every model
# (<id>_trim.glb next to the textures). Trim height in model units; thin-based assets get less.
set -uo pipefail
cd "$(dirname "$0")/.."
trim_for() { case "$1" in
    laptop|server_2u|switch) echo 0.03;; monitor|toolbox|desk|patch_panel) echo 0.04;; chair|boxes|printer|coffee_machine) echo 0.05;;
    tech_*) echo 0.02;; *) echo 0.08;; esac; }
if [ $# -gt 0 ]; then ids=("$@"); else ids=(); for d in assets/exported/*/; do ids+=("$(basename "$d")"); done; fi
for id in "${ids[@]}"; do
    glb="assets/exported/$id/$id.glb"; [ -s "$glb" ] || { echo "SKIP $id (no glb)"; continue; }
    name="Prop$(python3 -c "print(''.join(p.capitalize() for p in '$id'.split('_')))")"
    if [ -f "assets/runtime/$id/$name.qml" ] && [ "${FORCE:-0}" != "1" ]; then echo "SKIP $id (imported)"; continue; fi
    rm -rf "assets/runtime/$id"
    trimmed="assets/exported/$id/${id}_trim.glb"
    python3 scripts/trim-base.py "$glb" "$trimmed" --trim "${TRIM:-$(trim_for "$id")}" | tail -1
    rigged="assets/rigged/$id/${id}_rigged.glb"    # characters: the rigged + animated GLB when it exists
    if [ -s "$rigged" ]; then python3 scripts/import-runtime.py "$rigged" "assets/runtime/$id" --name "$name" --one-shot Cheer 2>&1 | tail -1
    else python3 scripts/import-runtime.py "$trimmed" "assets/runtime/$id" --name "$name" 2>&1 | tail -1; fi
done
python3 scripts/update-asset-manifest.py
