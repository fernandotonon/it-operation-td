#!/usr/bin/env python3
"""Cut the base slab off a TRELLIS.2 GLB. The generator turns the reflection under a concept image
into a thick plate spanning the whole footprint; this drops every triangle that lies entirely below
minY + trim (model units) and compacts the vertex buffers so bounding boxes shrink accordingly.

    python3 scripts/trim-base.py in.glb out.glb [--trim 0.08]

Pure Python (struct/json): single-primitive, indexed, non-interleaved GLBs as QtMeshEditor writes them.
The original file is never modified."""
import argparse, json, struct

CT = {5120: ("b", 1), 5121: ("B", 1), 5122: ("h", 2), 5123: ("H", 2), 5125: ("I", 4), 5126: ("f", 4)}
NC = {"SCALAR": 1, "VEC2": 2, "VEC3": 3, "VEC4": 4, "MAT4": 16}

def read_glb(path):
    b = open(path, "rb").read()
    _, _, length = struct.unpack_from("<III", b, 0)
    off, chunks = 12, {}
    while off < length:
        clen, ctype = struct.unpack_from("<II", b, off); off += 8
        chunks[ctype] = b[off:off + clen]; off += clen
    return json.loads(chunks[0x4E4F534A]), bytearray(chunks[0x004E4942])

def write_glb(path, j, bin_):
    js = json.dumps(j, separators=(",", ":")).encode()
    js += b" " * ((4 - len(js) % 4) % 4)
    bin_ += b"\0" * ((4 - len(bin_) % 4) % 4)
    total = 12 + 8 + len(js) + 8 + len(bin_)
    with open(path, "wb") as f:
        f.write(struct.pack("<III", 0x46546C67, 2, total))
        f.write(struct.pack("<II", len(js), 0x4E4F534A)); f.write(js)
        f.write(struct.pack("<II", len(bin_), 0x004E4942)); f.write(bin_)

def read_accessor(j, bin_, idx):
    acc = j["accessors"][idx]; bv = j["bufferViews"][acc["bufferView"]]
    fmt, size = CT[acc["componentType"]]; n = NC[acc["type"]]
    stride = bv.get("byteStride", size * n)
    base = bv.get("byteOffset", 0) + acc.get("byteOffset", 0)
    return [struct.unpack_from("<" + fmt * n, bin_, base + i * stride) for i in range(acc["count"])], fmt, n

def append_accessor(j, bin_, rows, fmt, n, ctype, atype, target, with_minmax=False):
    off = len(bin_)
    for r in rows: bin_ += struct.pack("<" + fmt * n, *r)
    bin_ += b"\0" * ((4 - len(bin_) % 4) % 4)
    j["bufferViews"].append({"buffer": 0, "byteOffset": off, "byteLength": len(rows) * struct.calcsize("<" + fmt * n), "target": target})
    acc = {"bufferView": len(j["bufferViews"]) - 1, "byteOffset": 0, "componentType": ctype, "count": len(rows), "type": atype}
    if with_minmax and rows:
        acc["min"] = [min(r[k] for r in rows) for k in range(n)]
        acc["max"] = [max(r[k] for r in rows) for k in range(n)]
    j["accessors"].append(acc)
    return len(j["accessors"]) - 1

def main():
    ap = argparse.ArgumentParser(); ap.add_argument("src"); ap.add_argument("dst"); ap.add_argument("--trim", type=float, default=0.08)
    a = ap.parse_args()
    j, bin_ = read_glb(a.src)
    prim = j["meshes"][0]["primitives"][0]
    pos, _, _ = read_accessor(j, bin_, prim["attributes"]["POSITION"])
    idx, _, _ = read_accessor(j, bin_, prim["indices"])
    idx = [i[0] for i in idx]
    miny = min(p[1] for p in pos); cut = miny + a.trim
    keep = []
    for t in range(0, len(idx), 3):
        tri = idx[t:t + 3]
        if any(pos[v][1] >= cut for v in tri): keep.extend(tri)
    used = sorted(set(keep)); remap = {v: k for k, v in enumerate(used)}
    new_attrs = {}
    for name, acc_idx in prim["attributes"].items():
        rows, fmt, n = read_accessor(j, bin_, acc_idx)
        acc = j["accessors"][acc_idx]
        new_attrs[name] = append_accessor(j, bin_, [rows[v] for v in used], fmt, n, acc["componentType"], acc["type"], 34962, with_minmax=(name == "POSITION"))
    prim["attributes"] = new_attrs
    prim["indices"] = append_accessor(j, bin_, [(remap[v],) for v in keep], "I", 1, 5125, "SCALAR", 34963)
    j["buffers"][0]["byteLength"] = len(bin_) + ((4 - len(bin_) % 4) % 4)
    write_glb(a.dst, j, bin_)
    newmin = min(pos[v][1] for v in used)
    print(f"{a.dst}: triangles {len(idx)//3} -> {len(keep)//3}, vertices {len(pos)} -> {len(used)}, minY {miny:.3f} -> {newmin:.3f} (cut {cut:.3f})")

if __name__ == "__main__":
    main()
