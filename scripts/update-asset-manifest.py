#!/usr/bin/env python3
"""Bring app/config/assets.js in line with what exists under assets/runtime: for every id with a
balsam import set model / unitHeight / footOffset / representation / status. Gameplay never
changes - only the manifest. `height` (metres) and `rotation` stay as authored.

    python3 scripts/update-asset-manifest.py [--dry-run]

unitHeight = bbox height of the source GLB, footOffset = -minY (read with `qtmesh info --json`)."""
import json, os, re, subprocess, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
Q = os.environ.get("QTMESH", "/opt/homebrew/bin/qtmesh")
ENV = dict(os.environ, QTMESH_NO_TELEMETRY="1")
DRY = "--dry-run" in sys.argv

def type_name(asset_id): return "".join(p.capitalize() for p in asset_id.split("_"))

def bbox(glb):
    out = subprocess.run([Q, "info", glb, "--json"], capture_output=True, text=True, env=ENV).stdout
    try:
        j = json.loads(out[out.index("{"):])
    except Exception:
        return None
    lo, hi = j["boundingBox"]["min"], j["boundingBox"]["max"]
    return {"footOffset": round(-lo[1], 3), "unitHeight": round(hi[1] - lo[1], 3), "unitWidth": round(hi[0] - lo[0], 3), "unitDepth": round(hi[2] - lo[2], 3)}

def set_field(entry, key, value):
    lit = json.dumps(value) if isinstance(value, str) else repr(value)
    if re.search(rf"\b{key}:\s*", entry):
        return re.sub(rf"(\b{key}:\s*)(\"[^\"]*\"|[-\w.]+|null)", lambda m: m.group(1) + lit, entry, count=1)
    return entry.replace("{", "{ " + key + ": " + lit + ",", 1)

def main():
    path = os.path.join(ROOT, "app", "config", "assets.js")
    src = open(path, encoding="utf-8").read()
    changed = []
    for asset_id in re.findall(r"^\s{4}(\w+):\s*\{", src, re.M):
        rt = os.path.join(ROOT, "assets", "runtime", asset_id)
        qmls = sorted(f for f in os.listdir(rt)) if os.path.isdir(rt) else []
        qmls = [f for f in qmls if f.endswith(".qml")]
        glb = os.path.join(ROOT, "assets", "exported", asset_id, asset_id + "_trim.glb")
        if not os.path.exists(glb):
            glb = os.path.join(ROOT, "assets", "exported", asset_id, asset_id + ".glb")
        if not qmls or not os.path.exists(glb):
            continue
        qml = os.path.join(rt, qmls[0])
        m = re.search(rf"^\s{{4}}{asset_id}:\s*\{{.*?\}} \}},?\n", src, re.M | re.S)
        if not m:
            print("skip", asset_id, "(entry not parsed)"); continue
        entry = m.group(0)
        bb = bbox(glb)
        if not bb:
            print("skip", asset_id, "(no bbox)"); continue
        new = set_field(entry, "model", "../" + os.path.relpath(qml, ROOT))
        for k in ("unitHeight", "footOffset", "unitWidth", "unitDepth"):
            new = set_field(new, k, bb[k])
        new = set_field(new, "representation", "model")
        new = set_field(new, "status", "generated")
        if new != entry:
            src = src.replace(entry, new); changed.append(asset_id)
    if changed and not DRY:
        open(path, "w", encoding="utf-8").write(src)
    print("updated:", ", ".join(changed) if changed else "nothing")

if __name__ == "__main__":
    main()
