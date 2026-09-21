#!/usr/bin/env python3
"""Write the web preload lists for a deploy directory:

  opti-pack.bin / opti-pack.json   all small files (< 64 KB, not images/meshes) in ONE download;
                                       index.html writes them into Qt's in-memory FS before main()
  opti-assets.json                   the big files (textures, meshes, sprite sheets) for Qt's own
                                       preloader (parallel downloads)
  opti-manifest.json                 sizes for the loading-screen progress bar

    python3 scripts/make-web-pack.py <deploy_dir>
"""
import json
import os
import sys

d = sys.argv[1]
SMALL = 64 * 1024
big, pack, offset = [], [], 0
blob = bytearray()
for root, _, files in os.walk(os.path.join(d, "assets")):
    for name in sorted(files):
        if name == ".DS_Store" or name.endswith(".mesh.gz"):
            continue
        path = os.path.join(root, name)
        rel = os.path.relpath(path, d).replace(os.sep, "/")
        size = os.path.getsize(path)
        ext = name.rsplit(".", 1)[-1].lower()
        if size < SMALL and ext not in ("png", "jpg", "jpeg", "mesh"):
            data = open(path, "rb").read()
            pack.append({"destination": "/game/" + rel, "offset": offset, "size": len(data)})
            blob += data; offset += len(data)
        else:
            big.append({"source": rel, "destination": "/game/" + rel, "size": size})
big.sort(key=lambda e: e["source"])
open(os.path.join(d, "opti-pack.bin"), "wb").write(blob)
json.dump(pack, open(os.path.join(d, "opti-pack.json"), "w"))
json.dump([{"source": e["source"], "destination": e["destination"]} for e in big], open(os.path.join(d, "opti-assets.json"), "w"))
app_sizes = {f: os.path.getsize(os.path.join(d, f)) for f in os.listdir(d) if f.endswith((".wasm", ".js")) and not f.startswith("opti-sw")}
total = sum(e["size"] for e in big) + len(blob) + sum(app_sizes.values())
json.dump({"expectedBytes": total, "bigFiles": len(big), "packedFiles": len(pack), "packBytes": len(blob), "app": app_sizes}, open(os.path.join(d, "opti-manifest.json"), "w"))
print(f"pack: {len(pack)} small files in {len(blob) / 1024:.0f} KB; preload: {len(big)} files, {sum(e['size'] for e in big) / 1048576:.1f} MB; expected download {total / 1048576:.1f} MB (uncompressed)")
