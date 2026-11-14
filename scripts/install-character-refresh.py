#!/usr/bin/env python3
"""Validate and import staged characters, then install with a complete local backup."""
from datetime import datetime, timezone
from pathlib import Path
import json, shutil, subprocess, sys
from importlib.util import spec_from_file_location, module_from_spec

root = Path(__file__).resolve().parent.parent
stage = root/'assets/character-refresh'
ids = ['tech_headset', 'tech_helmet', 'tech_polo', 'staff_02', 'staff_05']
spec = spec_from_file_location('character_validation', root/'scripts/validate-character.py')
module = module_from_spec(spec); spec.loader.exec_module(module)
reports = [module.validate(stage/f'rigged/{id}/{id}_rigged.glb') for id in ids]
# These algorithms can fall back inside QtMeshEditor; require proof of the requested backends.
for id in ids:
    text = (stage/f'logs/{id}-rig-animation.log').read_text()
    decoder, objects, cursor = json.JSONDecoder(), [], 0
    while True:
        start = text.find('{', cursor)
        if start < 0: break
        try:
            obj, used = decoder.raw_decode(text[start:])
            if isinstance(obj, dict): objects.append(obj)
            cursor = start+used
        except json.JSONDecodeError: cursor = start+1
    assert any(obj.get('algorithm') == 'unirig' for obj in objects), id+': UniRig not confirmed'
    assert any(obj.get('algorithmUsed') == 'skintokens' for obj in objects), id+': SkinTokens not confirmed'
    assert not any(obj.get('fallbackReason') for obj in objects), id+': unexpected rigging fallback'
    assert 'birefnet' in (stage/f'logs/{id}-generation.log').read_text().lower(), id+': matting not confirmed'
    assert not list((stage/f'exported/{id}').glob('*.qtm3d')), id+': unexpected source sidecar'

# Finish all runtime imports before touching any playable asset.
for id in ids:
    name = 'Prop'+''.join(part.capitalize() for part in id.split('_'))
    subprocess.run(['python3', str(root/'scripts/import-runtime.py'), str(stage/f'rigged/{id}/{id}_rigged.glb'),
                    str(stage/f'runtime/{id}'), '--name', name, '--one-shot', 'Cheer'], check=True)
(stage/'validation.json').write_text(json.dumps(reports, indent=2)+'\n')
if '--prepare-only' in sys.argv:
    print('Staged runtime imports are ready for visual review; playable assets are unchanged.')
    raise SystemExit(0)
backup = stage/'backups'/datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
backup.mkdir(parents=True)
shutil.copy2(root/'app/config/assets.js', backup/'assets.js')
for id in ids:
    for kind in ['exported', 'rigged', 'runtime']:
        active = root/f'assets/{kind}/{id}'
        previous = backup/kind/id; previous.parent.mkdir(parents=True, exist_ok=True)
        if active.exists(): active.rename(previous)
        shutil.copytree(stage/kind/id, active, ignore=shutil.ignore_patterns('work'))
subprocess.run(['python3', str(root/'scripts/update-asset-manifest.py'), *ids], cwd=root, check=True)
(stage/'validation.json').write_text(json.dumps(reports, indent=2)+'\n')
print('Installed five validated characters. Backup:', backup)
