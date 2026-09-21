#!/usr/bin/env python3
"""Bring every PBR map of an exported model to exactly 1024x1024.

    python3 scripts/resize-textures.py assets/exported/<id>

xatlas packs the bake into a ~1300 px atlas even when 1024 is requested; UVs are normalised,
so resampling the PNGs is lossless for the mesh and halves the texture download.
"""
import glob
import os
import sys

from PIL import Image

d = sys.argv[1]
size = int(sys.argv[2]) if len(sys.argv) > 2 else 1024
for p in glob.glob(os.path.join(d, "*.png")):
    if not p.endswith(("_diffuse.png", "_normal.png", "_roughness.png", "_metallic.png")):
        continue
    im = Image.open(p)
    if im.size != (size, size):
        im.resize((size, size), Image.LANCZOS).save(p, optimize=True)
    print(os.path.basename(p), Image.open(p).size)
