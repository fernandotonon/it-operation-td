#!/usr/bin/env python3
"""Rock-solid Ken Burns: LANCZOS crop sequence → png frames for ffmpeg.

ffmpeg zoompan/crop expressions quantize to integer pixels and read as shake.
"""
from __future__ import annotations

import argparse
import subprocess
import sys
import tempfile
from pathlib import Path

from PIL import Image


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("src")
    p.add_argument("out")
    p.add_argument("secs", type=float)
    p.add_argument("direction", choices=("in", "out"), default="in", nargs="?")
    p.add_argument("--fps", type=int, default=30)
    p.add_argument("--zoom", type=float, default=1.06, help="max zoom factor")
    args = p.parse_args()

    im = Image.open(args.src).convert("RGB")
    base = im.resize((im.width * 2, im.height * 2), Image.Resampling.LANCZOS)
    W, H, fps = 1280, 720, args.fps
    n = max(1, int(round(args.secs * fps)))
    z0, z1 = (1.0, args.zoom) if args.direction == "in" else (args.zoom, 1.0)

    with tempfile.TemporaryDirectory() as tmp:
        out_dir = Path(tmp)
        for i in range(n):
            t = i / max(1, n - 1)
            u = t * t * (3.0 - 2.0 * t)  # smoothstep
            z = z0 + (z1 - z0) * u
            cw, ch = W / z, H / z
            # Position the window in logical 1280×720 coords, then map into 2× base.
            max_ox = max(0.0, W - cw)
            max_oy = max(0.0, H - ch)
            if args.direction == "in":
                ox = max_ox * (0.15 + 0.70 * u)
                oy = max_oy * (0.20 + 0.50 * u)
            else:
                ox = max_ox * (0.85 - 0.70 * u)
                oy = max_oy * (0.70 - 0.50 * u)
            sx = base.width / W
            sy = base.height / H
            box = (ox * sx, oy * sy, (ox + cw) * sx, (oy + ch) * sy)
            frame = base.resize((W, H), Image.Resampling.LANCZOS, box=box)
            frame.save(out_dir / f"f{i:04d}.png")

        cmd = [
            "ffmpeg", "-y", "-framerate", str(fps),
            "-i", str(out_dir / "f%04d.png"),
            "-c:v", "libx264", "-preset", "veryfast", "-crf", "20",
            "-pix_fmt", "yuv420p", "-r", str(fps), args.out,
        ]
        r = subprocess.run(cmd, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        return r.returncode


if __name__ == "__main__":
    sys.exit(main())
