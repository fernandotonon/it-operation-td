#!/usr/bin/env python3
"""Shrink the DEPLOY copy of the runtime assets for the web (sources stay untouched):

  * textures: PNG -> JPEG (TRELLIS.2 textures are opaque), resized per role:
      diffuse   characters 2048, props 1024        (the requested texture budgets, as colour)
      normal    characters 1024, props 512         (JPEG 4:4:4, no chroma subsampling)
      roughness/metallic/other  512 / 256
    the balsam QML files are rewritten to the new names
  * meshes: a gzip copy `<name>.mesh.gz` next to each `.mesh` (the service worker fetches the .gz and
    inflates it; hosts like GitHub Pages do not compress model/mesh)

    python3 scripts/web-optimize-assets.py <deploy_assets_dir> [--characters pedro,isabela]
"""
import argparse
import glob
import gzip
import os

from PIL import Image, ImageFile

ImageFile.MAXBLOCK = 32 * 1024 * 1024

SIZES = {  # role -> (characters, props)
    "diffuse": (2048, 1024), "basecolor": (2048, 1024),
    "normal": (1024, 512),
    "roughness": (512, 256), "metallic": (512, 256), "metalness": (512, 256), "occlusion": (512, 256), "emissive": (512, 256),
}
QUALITY = {"normal": 88}
DEFAULT_Q = 85


def role_of(name):
    n = name.lower()
    for r in SIZES:
        if r in n:
            return r
    return "diffuse"          # unnamed maps (e.g. QtMeshEditor paint layers) are colour: keep the colour budget


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("assets_dir")
    ap.add_argument("--characters", default="pedro,isabela")
    a = ap.parse_args()
    chars = set(a.characters.split(","))

    before = after = 0
    renamed = {}
    for png in sorted(glob.glob(os.path.join(a.assets_dir, "runtime", "*", "maps", "*.png"))):
        model = png.split(os.sep)[-3]
        im = Image.open(png)
        if im.mode == "RGBA" and im.getchannel("A").getextrema()[0] < 250:
            continue                                   # real transparency: keep the PNG
        role = role_of(os.path.basename(png))
        cap = SIZES.get(role, (512, 256))[0 if model in chars else 1]
        if max(im.size) > cap:
            im = im.resize((max(1, im.width * cap // max(im.size)), max(1, im.height * cap // max(im.size))), Image.LANCZOS)
        jpg = png[:-4] + ".jpg"
        im.convert("RGB").save(jpg, "JPEG", quality=QUALITY.get(role, DEFAULT_Q), optimize=True, subsampling=0 if role == "normal" else 2)
        before += os.path.getsize(png); after += os.path.getsize(jpg)
        os.remove(png)
        renamed[os.path.basename(png)] = os.path.basename(jpg)

    for qml in glob.glob(os.path.join(a.assets_dir, "runtime", "*", "*.qml")):
        s = open(qml, encoding="utf-8").read(); s2 = s
        for old, new in renamed.items():
            s2 = s2.replace(f'"maps/{old}"', f'"maps/{new}"')
        if s2 != s:
            open(qml, "w", encoding="utf-8").write(s2)

    mb = mz = 0
    for mesh in glob.glob(os.path.join(a.assets_dir, "runtime", "*", "meshes", "*.mesh")):
        data = open(mesh, "rb").read()
        with open(mesh + ".gz", "wb") as f:
            f.write(gzip.compress(data, 9, mtime=0))
        mb += len(data); mz += os.path.getsize(mesh + ".gz")
    print(f"textures: {len(renamed)} PNG -> JPEG, {before / 1048576:.1f} MB -> {after / 1048576:.1f} MB; meshes {mb / 1048576:.1f} MB -> {mz / 1048576:.1f} MB gzip")


if __name__ == "__main__":
    main()
