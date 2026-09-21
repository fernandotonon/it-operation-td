#!/usr/bin/env python3
"""Pre-matte a concept image for image-to-3D: subject opaque, grey backdrop AND its soft drop
shadow transparent.

    python3 scripts/prematte.py <in.png> <out.png> [--threshold 60] [--preview out_preview.png]

The concept art is a single object on a plain grey backdrop with a soft shadow. Generic
background removal keeps the shadow, and the 3D generator then builds a slab under the model.
Feeding an RGBA image (subject only) avoids that. Pure PIL: background colour = median of the
border pixels; background = everything the border can flood-fill through pixels whose max
channel distance to that colour is <= threshold; enclosed regions stay opaque unless they are
practically background-coloured and large (gaps the model must see through).
"""
import argparse
import statistics

from PIL import Image, ImageChops, ImageDraw, ImageFilter


def prematte(src, threshold=60, hole_threshold=14):
    im = Image.open(src).convert("RGB")
    w, h = im.size
    px = im.load()
    border = [px[x, y] for x in range(0, w, 4) for y in (0, 1, h - 2, h - 1)] + \
             [px[x, y] for y in range(0, h, 4) for x in (0, 1, w - 2, w - 1)]
    bg = tuple(int(statistics.median(c[i] for c in border)) for i in range(3))

    diff = ImageChops.difference(im, Image.new("RGB", im.size, bg))
    r, g, b = diff.split()
    dist = ImageChops.lighter(ImageChops.lighter(r, g), b)
    cand = dist.point(lambda v: 0 if v <= threshold else 255).convert("L")
    seeds = [(0, 0), (w - 1, 0), (0, h - 1), (w - 1, h - 1)]
    for x in range(0, w, max(1, w // 24)):
        seeds += [(x, 0), (x, h - 1)]
    for y in range(0, h, max(1, h // 24)):
        seeds += [(0, y), (w - 1, y)]
    for s in seeds:
        if cand.getpixel(s) == 0:
            ImageDraw.floodfill(cand, s, 128)
    near = dist.point(lambda v: 255 if v <= hole_threshold else 0).convert("L")
    enclosed = ImageChops.multiply(cand.point(lambda v: 255 if v == 0 else 0), near)
    min_area = max(400, int(0.002 * w * h))
    pix = enclosed.load()
    for y in range(0, h, 2):
        for x in range(0, w, 2):
            if pix[x, y] == 255:
                before = enclosed.histogram()[255]
                ImageDraw.floodfill(enclosed, (x, y), 64)
                area = before - enclosed.histogram()[255]
                if area >= min_area:
                    ImageDraw.floodfill(cand, (x, y), 128)
    alpha = cand.point(lambda v: 0 if v == 128 else 255)
    alpha = alpha.filter(ImageFilter.MinFilter(5)).filter(ImageFilter.MaxFilter(5))
    alpha = alpha.filter(ImageFilter.GaussianBlur(0.8))
    out = im.copy()
    out.putalpha(alpha)
    coverage = sum(alpha.histogram()[129:]) / (w * h)
    return out, bg, coverage


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("src"); ap.add_argument("dst")
    ap.add_argument("--threshold", type=int, default=60)
    ap.add_argument("--hole-threshold", type=int, default=14)
    ap.add_argument("--preview")
    a = ap.parse_args()
    out, bg, cov = prematte(a.src, a.threshold, a.hole_threshold)
    out.save(a.dst, optimize=True)
    if a.preview:
        bgim = Image.new("RGBA", out.size, (255, 0, 255, 255))
        bgim.alpha_composite(out)
        bgim.convert("RGB").save(a.preview)
    print(f"{a.dst}: background {bg}, subject coverage {cov:.1%}")


if __name__ == "__main__":
    main()
