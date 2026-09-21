#!/usr/bin/env python3
"""Synthesize the game's short UI/combat cues as 16-bit mono WAV files (no external assets).
    python3 scripts/gen-audio.py            -> assets/audio/*.wav
Pure Python (wave + math): every cue is a few sine/square/noise segments with an envelope."""
import math, os, random, struct, wave

RATE = 22050
OUT = os.path.join(os.path.dirname(__file__), "..", "assets", "audio")

def tone(freq, dur, vol=0.5, shape="sine", freq_end=None, decay=1.0):
    n = int(RATE * dur); out = []
    for i in range(n):
        t = i / RATE
        f = freq if freq_end is None else freq + (freq_end - freq) * (i / max(1, n))
        ph = 2 * math.pi * f * t
        s = math.sin(ph) if shape == "sine" else (1 if math.sin(ph) > 0 else -1) * 0.5 if shape == "square" else random.uniform(-1, 1)
        env = min(1.0, i / (RATE * 0.005)) * (1 - i / n) ** decay
        out.append(s * vol * env)
    return out

def seq(*parts): return [x for p in parts for x in p]
def mix(a, b):
    n = max(len(a), len(b)); return [(a[i] if i < len(a) else 0) + (b[i] if i < len(b) else 0) for i in range(n)]
def silence(dur): return [0.0] * int(RATE * dur)

random.seed(7)
cues = {
    "shot":    tone(1200, 0.07, 0.35, freq_end=700),
    "burst":   mix(tone(160, 0.22, 0.5, freq_end=60), tone(0, 0.18, 0.25, shape="noise", decay=2.5)),
    "hit":     tone(500, 0.04, 0.3, shape="square", freq_end=300),
    "death":   seq(tone(660, 0.07, 0.4), tone(880, 0.07, 0.4), tone(1320, 0.12, 0.4)),
    "escape":  seq(tone(300, 0.15, 0.5, shape="square"), tone(220, 0.25, 0.5, shape="square")),
    "place":   seq(tone(520, 0.08, 0.4), tone(780, 0.14, 0.4)),
    "sell":    seq(tone(780, 0.08, 0.4), tone(520, 0.14, 0.4)),
    "upgrade": seq(tone(523, 0.08, 0.4), tone(659, 0.08, 0.4), tone(784, 0.16, 0.4)),
    "wave":    seq(tone(392, 0.12, 0.45), tone(523, 0.12, 0.45), tone(659, 0.25, 0.45)),
    "win":     seq(tone(523, 0.14, 0.5), tone(659, 0.14, 0.5), tone(784, 0.14, 0.5), tone(1047, 0.45, 0.5)),
    "lose":    seq(tone(440, 0.2, 0.5), tone(392, 0.2, 0.5), tone(311, 0.5, 0.5)),
    "click":   tone(900, 0.03, 0.3, shape="square"),
    "reboot":  seq(tone(600, 0.25, 0.4, freq_end=120), silence(0.1), tone(200, 0.3, 0.4, freq_end=900)),
    "alarm":   seq(tone(880, 0.12, 0.4, shape="square"), tone(660, 0.12, 0.4, shape="square"), tone(880, 0.12, 0.4, shape="square")),
    "reveal":  seq(tone(1500, 0.05, 0.3), tone(2000, 0.05, 0.3), tone(2500, 0.1, 0.3)),
}
os.makedirs(OUT, exist_ok=True)
for name, samples in cues.items():
    path = os.path.join(OUT, name + ".wav")
    with wave.open(path, "wb") as w:
        w.setnchannels(1); w.setsampwidth(2); w.setframerate(RATE)
        w.writeframes(b"".join(struct.pack("<h", int(max(-1, min(1, s)) * 32767)) for s in samples))
    print(name, len(samples) / RATE, "s")
