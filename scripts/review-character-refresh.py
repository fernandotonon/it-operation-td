#!/usr/bin/env python3
"""Render staged characters without changing the game manifest (run after --prepare-only)."""
import argparse, json, os, subprocess
from pathlib import Path
root = Path(__file__).resolve().parent.parent
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--renderer', default=os.environ.get('CLAYRENDER', str(Path.home()/'clayground/build/bin/clayrender')))
a = parser.parse_args()
output = root/'docs/screenshots/characters'; output.mkdir(parents=True, exist_ok=True)
for id in ['tech_headset', 'tech_helmet', 'tech_polo', 'staff_02', 'staff_05']:
    raw = root/f'assets/character-refresh/exported/{id}/{id}.glb'
    info = subprocess.check_output(['/opt/homebrew/bin/qtmesh', 'info', str(raw), '--json'], text=True)
    box = json.loads(info[info.index('{'):])['boundingBox']
    name = 'Prop'+''.join(p.capitalize() for p in id.split('_'))
    runtime = root/f'assets/character-refresh/runtime/{id}/{name}.qml'
    clips = ['Idle', 'Typing', 'Cheer']
    for clip in clips:
        command = [a.renderer, str(root/'app/CharacterPreview.qml'), '--out', str(output/f'{id}-{clip.lower()}.png'),
                   '--size', '900x800', '--set', 'assetId='+json.dumps(id), '--set', 'clip='+json.dumps(clip),
                   '--set', 'runtimeSource='+json.dumps(runtime.as_uri()),
                   '--set', 'sourceHeight='+str(box['max'][1]-box['min'][1]),
                   '--set', 'sourceFootOffset='+str(-box['min'][1]), '--frames', '60']
        subprocess.run(command, cwd=root, check=True)
