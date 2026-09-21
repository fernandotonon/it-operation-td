#!/usr/bin/env python3
"""Flatten an RGBA reference image onto an opaque backdrop so QtMeshEditor's background remover
(`generate3d --matting best`) actually runs: the TRELLIS.2 path skips matting when the input already
has an alpha channel. The backdrop colour is the median of the image's opaque border pixels (black
for the equipment renders), so the result looks like the original render before it was cut out.

    python3 scripts/flatten-alpha.py <in.png> <out.png>
"""
import statistics, sys
from PIL import Image

src, dst = sys.argv[1], sys.argv[2]
im = Image.open(src)
if im.mode != "RGBA":
    im.convert("RGB").save(dst); print(f"{dst}: already opaque"); sys.exit(0)
w, h = im.size; px = im.load()
border = [px[x, y] for x in range(0, w, 4) for y in (0, h - 1)] + [px[x, y] for y in range(0, h, 4) for x in (0, w - 1)]
opaque = [p for p in border if p[3] > 200]
bg = tuple(int(statistics.median(c[i] for c in opaque)) for i in range(3)) if len(opaque) > 20 else (0, 0, 0)
out = Image.new("RGB", im.size, bg); out.paste(im, mask=im.getchannel("A")); out.save(dst)
print(f"{dst}: flattened onto {bg}")
