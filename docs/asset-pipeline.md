# Asset pipeline — QtMeshEditor → Clayground

Every 3D asset starts from one of the supplied *Operação TI* reference images (`reference/images/`,
never modified). The ones the prototype uses are copied with a readable name into
`assets/source-images/<id>.png`; everything after that is a re-runnable command.

```
assets/source-images/<id>.png
        │  qtmesh generate3d --backend trellis2 --preset fast --matting best --target-tris 8000 --texture-size 1024 --no-source
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
* **Preset `fast`** (512 cascade). Re-tested on 2026-09-21 with QtMeshEditor 3.39 / trellis.cpp: `high` (1536)
  stalls after its fourth stage (no output for 10 minutes, killed by the watchdog at 14 minutes) and `balanced`
  (1024) crashes trellis-cli after its eighth stage, so `fast` remains the only preset that finishes on this
  24 GB Apple M5. Characters use 25 000 triangles and 2048 px textures, props 8 000 / 1024. The `balanced`/`high` cascades stall in a Metal command buffer on this
  24 GB Apple Silicon Mac (documented in the School Adventure project), so the script defaults to `fast`
  and only tries other presets when `PRESET=` is given.
* **Character refresh, 2026-11-12**: the QtMeshEditor 3.67.0 bundled native runtime completes balanced
  character generation on this machine. The historical failures above remain relevant to the older
  runtime; the new staged character pipeline uses balanced, BiRefNet and `--no-source`.
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

The five currently shipped people (`tech_helmet`, `tech_headset`, `tech_polo`, `staff_02`, `staff_05`)
use `scripts/rig-character.sh`: UniRig predicts the skeleton, then an explicit
`qtmesh skin --algo skintokens --max-influences 4` computes the weights. Kimodo's native runtime
creates the existing clip names from descriptive action prompts:

| Clip | Action | Loop | Hand setting |
|---|---|---|---|
| `Idle` | Person standing quietly, breathing, arms naturally at their sides | seamless, auto | relaxed |
| `Typing` | Person seated at a desk working on a computer, typing with both hands | seamless, auto | auto from prompt |
| `Cheer` | Person raising both arms in celebration, then returning to standing | once | open |

All motions disable root travel to keep people at their authored stations. Idle/Typing remain repeating
in the Qt runtime; Cheer is imported with `--one-shot Cheer`. Finger detail depends on the joints UniRig
predicts for each mesh; the prompt and Kimodo hand setting cannot manufacture missing finger geometry.
After the three clips are merged, `scripts/stabilize-cheer-hands.py` twists each Hand about the forearm
axis so palms aim toward the body midline while the arms are raised (Kimodo's overhead retarget
otherwise turns the backs of the hands toward the head).

`bash scripts/refresh-characters.sh` stages a complete refresh under the gitignored
`assets/character-refresh/`, using BiRefNet (`--matting best`), `--no-source`, 20k triangles,
2048 px textures, and sequential model/rig/animation tasks to bound memory use. The preset defaults
to balanced for the newer runtime; `PRESET=fast` is available when a device cannot finish it.
The original game assets remain in use until the staged files pass
`python3 scripts/validate-character.py <rigged.glb> ...` and visual inspection.
`IN_ROOT` and `RIG_ROOT` select alternative input/output directories for `rig-character.sh`.

`import-all.sh` imports the rigged GLB when `assets/rigged/<id>/` exists,
`PropVisual.clip` selects the clip, and `Board3D.celebrate` switches every technician to `Cheer` on victory.
`app/CharacterPreview.qml` previews one character and clip in the real runtime.

## Commands

```bash
scripts/generate-models.sh                 # every source image without a GLB (long!)
scripts/generate-models.sh ups laptop      # specific ids
scripts/import-all.sh                      # balsam import + manifest refresh
qtmesh turntable assets/exported/ups/ups.glb -o ups.png --frames 4 --size 320x320   # quick look
```

## Finishing the character set (status 2026-09-21)

Generated and in the game: 19 original props, the three technicians, `staff_02`, `staff_05`, `helmet`, `mug`,
`phone`, `whiteboard`, `coin`. Still pending: 25 staff characters plus `heart`, `reception`, `workstation`
(their reference images are already in `assets/source-images/`; `app/config/stages.js` lists them in
`pendingAssets` and drops their placements until they exist).

What went wrong in the overnight batch, so it is not repeated:

* `--preset high` stalls and `--preset balanced` crashes trellis-cli on this Mac; only `fast` completes.
* trellis-cli exits with status 15 when anything else uses the GPU (clayrender, a browser check). Do not render
  while generating.
* UniRig on a 25 000-triangle character grew to 24 GB and starved TRELLIS (stalls, exit 1/137). Rig **after**
  the generation batch, one character at a time, and watch `top -o mem`. If a rig balloons, simplify the
  mesh first (`qtmesh lod <glb> --count 1 --reductions 0.8 --algo meshopt`) or generate characters with
  `TRIS=20000` (the three technicians were rigged fine at 20 000).
* The Bash tool shell is zsh: an unquoted `$LIST` is one argument. Pass ids explicitly.
* `scripts/stall-guard.sh` kills a generator whose per-model log has been idle for 10 minutes; the in-script
  watchdog did not fire in the batch (works in isolation - unresolved), so run the guard beside every batch.

Runbook (about 6 minutes per character on the GPU, then 5-8 minutes per rig on the CPU):

```bash
scripts/stall-guard.sh assets/qtmesh-projects/logs/batch-staff2.log 600 &
PRESET=fast scripts/generate-models.sh staff_06 staff_07 ... staff_57 heart reception workstation \
    >> assets/qtmesh-projects/logs/batch-staff2.log 2>&1        # SEED=7 for a model whose first run failed
for id in staff_06 ...; do scripts/rig-character.sh $id; done   # after the batch, sequentially
TRIM=0.005 scripts/import-all.sh                                 # balsam import + manifest
# move the finished ids from pendingAssets to generatedAssets in app/config/stages.js, then rebuild
```
