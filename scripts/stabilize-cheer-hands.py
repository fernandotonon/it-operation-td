#!/usr/bin/env python3
"""Stop Cheer from candy-wrapping the wrists.

Kimodo's overhead cheer rolls UpperArm ~90–100° and Hand ~40–50° about their
bone axes. ForeArm local twist stays small (~5–10°); the visible pinch is the
Hand fighting the inherited UpperArm roll.

Height-blended, we decompose UpperArm and Hand into swing × twist about each
bone axis and restore the idle twist, keeping the raise swing / wrist flex.
"""
from __future__ import annotations

import argparse
import math
import struct
import sys
from pathlib import Path

from pygltflib import FLOAT, GLTF2, Accessor, BufferView

# bone -> child (defines local twist axis via child's rest translation)
TWIST_BONES = {
    "LeftArm": "LeftForeArm",
    "RightArm": "RightForeArm",
    "LeftHand": None,  # axis = own rest translation in parent
    "RightHand": None,
}


def qmul(a, b):
    ax, ay, az, aw = a
    bx, by, bz, bw = b
    return (
        aw * bx + ax * bw + ay * bz - az * by,
        aw * by - ax * bz + ay * bw + az * bx,
        aw * bz + ax * by - ay * bx + az * bw,
        aw * bw - ax * bx - ay * by - az * bz,
    )


def qconj(q):
    x, y, z, w = q
    return (-x, -y, -z, w)


def qnorm(q):
    x, y, z, w = q
    n = math.sqrt(x * x + y * y + z * z + w * w) or 1.0
    return (x / n, y / n, z / n, w / n)


def qslerp(a, b, t):
    a = qnorm(a)
    b = qnorm(b)
    dot = a[0] * b[0] + a[1] * b[1] + a[2] * b[2] + a[3] * b[3]
    if dot < 0:
        b = (-b[0], -b[1], -b[2], -b[3])
        dot = -dot
    if dot > 0.9995:
        return qnorm(
            (
                a[0] + t * (b[0] - a[0]),
                a[1] + t * (b[1] - a[1]),
                a[2] + t * (b[2] - a[2]),
                a[3] + t * (b[3] - a[3]),
            )
        )
    theta = math.acos(max(-1.0, min(1.0, dot)))
    s = math.sin(theta)
    w1 = math.sin((1.0 - t) * theta) / s
    w2 = math.sin(t * theta) / s
    return (
        a[0] * w1 + b[0] * w2,
        a[1] * w1 + b[1] * w2,
        a[2] * w1 + b[2] * w2,
        a[3] * w1 + b[3] * w2,
    )


def swing_twist_decompose(q, axis):
    """q = swing * twist, with twist parallel to axis (local)."""
    q = qnorm(q)
    ax, ay, az = axis
    dot = q[0] * ax + q[1] * ay + q[2] * az
    twist = qnorm((ax * dot, ay * dot, az * dot, q[3]))
    swing = qnorm(qmul(q, qconj(twist)))
    return swing, twist


def mat_from_trs(t, r, s):
    x, y, z, w = qnorm(r)
    sx, sy, sz = s
    xx, yy, zz = x * x, y * y, z * z
    xy, xz, yz = x * y, x * z, y * z
    wx, wy, wz = w * x, w * y, w * z
    return [
        [(1 - 2 * (yy + zz)) * sx, 2 * (xy - wz) * sy, 2 * (xz + wy) * sz, t[0]],
        [2 * (xy + wz) * sx, (1 - 2 * (xx + zz)) * sy, 2 * (yz - wx) * sz, t[1]],
        [2 * (xz - wy) * sx, 2 * (yz + wx) * sy, (1 - 2 * (xx + yy)) * sz, t[2]],
        [0.0, 0.0, 0.0, 1.0],
    ]


def mat_mul(a, b):
    out = [[0.0] * 4 for _ in range(4)]
    for i in range(4):
        for j in range(4):
            out[i][j] = a[i][0] * b[0][j] + a[i][1] * b[1][j] + a[i][2] * b[2][j] + a[i][3] * b[3][j]
    return out


def _blob(g: GLTF2) -> bytearray:
    return bytearray(g.binary_blob() or b"")


def _set_blob(g: GLTF2, data: bytearray) -> None:
    g.set_binary_blob(bytes(data))


def _read_f32(data: bytes, accessor, buffer_views):
    bv = buffer_views[accessor.bufferView]
    off = (bv.byteOffset or 0) + (accessor.byteOffset or 0)
    n = accessor.count
    if accessor.type == "SCALAR":
        return list(struct.unpack_from("<" + "f" * n, data, off))
    if accessor.type == "VEC3":
        vals = struct.unpack_from("<" + "f" * (n * 3), data, off)
        return [vals[i : i + 3] for i in range(0, len(vals), 3)]
    if accessor.type == "VEC4":
        vals = struct.unpack_from("<" + "f" * (n * 4), data, off)
        return [vals[i : i + 4] for i in range(0, len(vals), 4)]
    raise ValueError(accessor.type)


def _append_f32(data: bytearray, values: list[float]) -> tuple[int, int]:
    while len(data) % 4:
        data.append(0)
    offset = len(data)
    data.extend(struct.pack("<" + "f" * len(values), *values))
    return offset, len(values) * 4


def _node_index(g: GLTF2, name: str) -> int:
    for i, node in enumerate(g.nodes):
        if node.name == name:
            return i
    raise KeyError(name)


def _animation(g: GLTF2, name: str):
    for anim in g.animations:
        if anim.name == name:
            return anim
    raise KeyError(name)


def _channels_by_node(anim):
    out = {}
    for ch in anim.channels:
        out.setdefault(ch.target.node, {})[ch.target.path] = ch
    return out


def _flip_match(prev, q):
    if (q[0] * prev[0] + q[1] * prev[1] + q[2] * prev[2] + q[3] * prev[3]) < 0:
        return (-q[0], -q[1], -q[2], -q[3])
    return q


def stabilize(path: Path, dry_run: bool = False) -> dict:
    g = GLTF2().load(str(path))
    data = _blob(g)
    cheer = _animation(g, "Cheer")
    by_node = _channels_by_node(cheer)

    rest = []
    parents = [-1] * len(g.nodes)
    for i, node in enumerate(g.nodes):
        t = tuple(node.translation or [0.0, 0.0, 0.0])
        r = tuple(node.rotation or [0.0, 0.0, 0.0, 1.0])
        s = tuple(node.scale or [1.0, 1.0, 1.0])
        rest.append((t, qnorm(r), s))
        if node.children:
            for c in node.children:
                parents[c] = i

    sample_times = None
    for paths in by_node.values():
        if "rotation" in paths:
            ch = paths["rotation"]
            sample_times = _read_f32(data, g.accessors[cheer.samplers[ch.sampler].input], g.bufferViews)
            break
    if not sample_times:
        raise RuntimeError(f"{path}: Cheer has no rotation channels")

    tracks = {}
    for node_i, paths in by_node.items():
        tracks[node_i] = {}
        for channel_path, ch in paths.items():
            sampler = cheer.samplers[ch.sampler]
            times = _read_f32(data, g.accessors[sampler.input], g.bufferViews)
            values = _read_f32(data, g.accessors[sampler.output], g.bufferViews)
            mapped = []
            j = 0
            for t in sample_times:
                while j + 1 < len(times) and abs(times[j + 1] - t) <= abs(times[j] - t):
                    j += 1
                mapped.append(values[j])
            tracks[node_i][channel_path] = mapped

    def local_trs(node_i, frame_i):
        t, r, s = rest[node_i]
        tr = tracks.get(node_i, {})
        if "translation" in tr:
            t = tuple(tr["translation"][frame_i])
        if "rotation" in tr:
            r = qnorm(tuple(tr["rotation"][frame_i]))
        if "scale" in tr:
            s = tuple(tr["scale"][frame_i])
        return t, r, s

    def world_mats(frame_i):
        locals_m = [mat_from_trs(*local_trs(i, frame_i)) for i in range(len(g.nodes))]
        worlds = [None] * len(g.nodes)
        order = []
        seen = set()

        def visit(i):
            if i in seen:
                return
            if parents[i] >= 0:
                visit(parents[i])
            seen.add(i)
            order.append(i)

        for i in range(len(g.nodes)):
            visit(i)
        for i in order:
            if parents[i] < 0:
                worlds[i] = locals_m[i]
            else:
                worlds[i] = mat_mul(worlds[parents[i]], locals_m[i])
        return worlds

    report = {"file": str(path), "bones": {}}
    n_frames = len(sample_times)

    hand_i_l = _node_index(g, "LeftHand")
    y0 = world_mats(0)[hand_i_l][1][3]
    ymax = y0
    for frame_i in range(n_frames):
        ymax = max(ymax, world_mats(frame_i)[hand_i_l][1][3])
    span = ymax - y0 or 1.0

    for bone_name, child_name in TWIST_BONES.items():
        bone_i = _node_index(g, bone_name)
        if "rotation" not in tracks.get(bone_i, {}):
            raise RuntimeError(f"{bone_name} has no Cheer rotation track")

        if child_name is None:
            # Hand: twist axis = own rest translation in parent (ForeArm) space.
            ht = rest[bone_i][0]
        else:
            child_i = _node_index(g, child_name)
            if parents[child_i] != bone_i:
                raise RuntimeError(f"{child_name} parent is not {bone_name}")
            ht = rest[child_i][0]
        axis_len = math.sqrt(ht[0] ** 2 + ht[1] ** 2 + ht[2] ** 2) or 1.0
        axis_local = (ht[0] / axis_len, ht[1] / axis_len, ht[2] / axis_len)

        idle_rot = qnorm(tuple(tracks[bone_i]["rotation"][0]))
        _, idle_twist = swing_twist_decompose(idle_rot, axis_local)

        new_locals = []
        twist_deltas = []
        for frame_i in range(n_frames):
            authored = qnorm(tuple(tracks[bone_i]["rotation"][frame_i]))
            swing, twist = swing_twist_decompose(authored, axis_local)
            rel = qnorm(qmul(twist, qconj(idle_twist)))
            twist_deltas.append(2.0 * math.degrees(math.acos(max(-1.0, min(1.0, rel[3])))))
            y = world_mats(frame_i)[hand_i_l][1][3]
            blend = max(0.0, min(1.0, (y - y0) / span))
            twist_new = qslerp(twist, idle_twist, blend)
            q_local = qnorm(qmul(swing, twist_new))
            if new_locals:
                q_local = _flip_match(new_locals[-1], q_local)
            new_locals.append(q_local)
            tracks[bone_i]["rotation"][frame_i] = list(q_local)

        flat = [c for q in new_locals for c in q]
        off, byte_len = _append_f32(data, flat)
        bv_i = len(g.bufferViews)
        g.bufferViews.append(BufferView(buffer=0, byteOffset=off, byteLength=byte_len, target=None))
        acc_i = len(g.accessors)
        g.accessors.append(
            Accessor(
                bufferView=bv_i,
                byteOffset=0,
                componentType=FLOAT,
                count=n_frames,
                type="VEC4",
            )
        )
        ch = by_node[bone_i]["rotation"]
        cheer.samplers[ch.sampler].output = acc_i
        report["bones"][bone_name] = {
            "keys": n_frames,
            "peakTwistVsIdleDegrees": round(max(twist_deltas), 2),
        }

    g.buffers[0].byteLength = len(data)
    _set_blob(g, data)
    if not dry_run:
        g.save_binary(str(path))
    return report


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("glbs", nargs="+", type=Path)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()
    for glb in args.glbs:
        report = stabilize(glb, dry_run=args.dry_run)
        print(report["file"])
        for bone, info in report["bones"].items():
            print(
                f"  {bone}: peak twist-vs-idle {info['peakTwistVsIdleDegrees']} deg "
                f"→ restored idle twist (kept swing)"
            )
    return 0


if __name__ == "__main__":
    sys.exit(main())
