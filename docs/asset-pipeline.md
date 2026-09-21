# Asset pipeline — QtMeshEditor → Clayground

Every 3D asset starts from one of the supplied *Operação TI* reference images (`reference/images/`,
never modified). The ones the prototype uses are copied with a readable name into
`assets/source-images/<id>.png`; everything after that is a re-runnable command.

```
assets/source-images/<id>.png
        │  qtmesh generate3d --backend trellis2 --preset fast --matting best --target-tris 8000 --texture-size 1024
        │  (BiRefNet 1024² matte of the ORIGINAL image; MATTING=fast falls back to RGBA-as-is / prematte.py)
        ▼                                                                scripts/generate-models.sh
assets/exported/<id>/<id>.glb  (+ .material, PBR PNGs)                   ~6-11 min per model on this Mac
        │  scripts/trim-base.py  (cuts the base slab -> <id>_trim.glb)
        │  balsam (Qt's glTF importer) + runtime patch                   scripts/import-runtime.py
        ▼                                                                scripts/import-all.sh
assets/runtime/<id>/Prop<Id>.qml  (+ meshes/*.mesh, maps/*.png)
        │  scripts/update-asset-manifest.py  (model path, unitHeight, footOffset from `qtmesh info --json`)
        ▼
app/config/assets.js  →  PropVisual   (gameplay never names a file; a missing model falls back to toon boxes)
```

## Decisions

* **Matting `best`**: QtMeshEditor's high-quality background remover (BiRefNet, MIT, ~930 MB fetched on
  first use) takes the untouched reference image and also drops the soft shadow / reflection under the
  object. U²-Net (`fast`) and the pre-matte were the first pass; every model was regenerated with `best`.
* **Preset `fast`** (512 cascade). The `balanced`/`high` cascades stall in a Metal command buffer on this
  24 GB Apple Silicon Mac (documented in the School Adventure project), so the script defaults to `fast`
  and only tries other presets when `PRESET=` is given.
* **Facing**: TRELLIS.2 output faces −Z; the manifest `rotation: 180` turns fronts to the camera.
* **Base slabs**: with the U²-Net / pre-matte inputs the generator turned the reflection under a concept
  image into a plate as wide as the whole footprint and ~8-10 % of the model tall. BiRefNet matting removes
  the reflection, so the slab no longer appears; `scripts/trim-base.py` (pure Python GLB rewrite that drops
  every triangle below `minY + trim` and compacts the buffers) stays in `import-all.sh` as a safety net
  (`TRIM=0.005` for the BiRefNet set; the per-asset table of 2-8 cm is only for U²-Net-era exports).
* **Alpha gate**: the TRELLIS.2 path uses a supplied alpha channel as the matte and never runs the remover,
  so `scripts/flatten-alpha.py` composites RGBA references onto their backdrop colour before `--matting best`.
* **Type names**: balsam refuses QML-reserved names (`Switch`), so runtime types are `Prop<Id>`.
* **Enemies** have no supplied reference and QtMeshEditor's text-to-image path (FLUX.2-klein) is not
  installed on this machine, so all six threats are procedural toon-box characters (`EnemyVisual.qml`).
  They are original designs and easy to replace with generated meshes later.

## Characters

The three technicians (`tech_helmet`, `tech_headset`, `tech_polo`) go through `scripts/rig-character.sh`:
`qtmesh rig --skeleton humanoid --skin --algo unirig`, then `qtmesh anim --generate idle|working|cheer`
from QtMeshEditor's bundled motion library, renamed to `Idle` / `Typing` / `Cheer`. Pinocchio was tried
first and left the arms unbound on these chibi proportions (torso and legs moved, arms stayed in T-pose);
UniRig binds them correctly. `import-all.sh` imports the rigged GLB when `assets/rigged/<id>/` exists,
`PropVisual.clip` selects the clip, and `Board3D.celebrate` switches every technician to `Cheer` on victory.
`app/CharacterPreview.qml` is a dojo/clayrender sandbox to look at one asset and clip.

## Commands

```bash
scripts/generate-models.sh                 # every source image without a GLB (long!)
scripts/generate-models.sh ups laptop      # specific ids
scripts/import-all.sh                      # balsam import + manifest refresh
qtmesh turntable assets/exported/ups/ups.glb -o ups.png --frames 4 --size 320x320   # quick look
```
