// Fifteen handcrafted waves. Each group: type, count, gap (s between spawns), delay (s after wave start).
// `intro` is a string key: the tutorial/joke card shown before the wave starts. `teach` opens the
// matching tutorial panel (tower/enemy explanations) the first time it appears.
.pragma library

var waves = [
    { intro: "w1",  groups: [ { type: "bug", count: 6, gap: 1.6, delay: 0 } ], teach: ["place", "patch"] },
    { intro: "w2",  groups: [ { type: "bug", count: 10, gap: 1.2, delay: 0 } ], teach: ["upgrade"] },
    { intro: "w3",  groups: [ { type: "bug", count: 8, gap: 1.0, delay: 0 }, { type: "bug", count: 6, gap: 0.8, delay: 12 } ], teach: ["firewall"] },
    { intro: "w4",  groups: [ { type: "spam", count: 10, gap: 0.6, delay: 0 }, { type: "bug", count: 6, gap: 1.2, delay: 8 } ], teach: ["spam", "traffic"] },
    { intro: "w5",  groups: [ { type: "spam", count: 14, gap: 0.5, delay: 0 }, { type: "bug", count: 8, gap: 1.0, delay: 6 } ], teach: ["backup"] },
    { intro: "w6",  groups: [ { type: "bug", count: 12, gap: 0.8, delay: 0 }, { type: "spam", count: 12, gap: 0.45, delay: 10 } ], teach: ["reboot"] },
    { intro: "w7",  groups: [ { type: "trojan", count: 3, gap: 4.0, delay: 0 }, { type: "bug", count: 8, gap: 1.0, delay: 4 } ], teach: ["trojan"] },
    { intro: "w8",  groups: [ { type: "trojan", count: 5, gap: 3.0, delay: 0 }, { type: "spam", count: 12, gap: 0.5, delay: 10 } ] },
    { intro: "w9",  groups: [ { type: "trojan", count: 6, gap: 2.5, delay: 0 }, { type: "bug", count: 12, gap: 0.8, delay: 2 }, { type: "spam", count: 10, gap: 0.5, delay: 14 } ], teach: ["scanner"] },
    { intro: "w10", groups: [ { type: "stealth", count: 6, gap: 2.0, delay: 0 }, { type: "bug", count: 8, gap: 1.0, delay: 3 } ], teach: ["stealth"] },
    { intro: "w11", groups: [ { type: "stealth", count: 10, gap: 1.5, delay: 0 }, { type: "trojan", count: 4, gap: 3.0, delay: 5 } ] },
    { intro: "w12", groups: [ { type: "stealth", count: 12, gap: 1.2, delay: 0 }, { type: "spam", count: 16, gap: 0.4, delay: 8 }, { type: "bug", count: 10, gap: 0.8, delay: 4 } ] },
    { intro: "w13", groups: [ { type: "lock", count: 2, gap: 8.0, delay: 0 }, { type: "bug", count: 14, gap: 0.8, delay: 3 }, { type: "spam", count: 10, gap: 0.5, delay: 15 } ], teach: ["lock"] },
    { intro: "w14", groups: [ { type: "lock", count: 3, gap: 6.0, delay: 0 }, { type: "trojan", count: 5, gap: 3.0, delay: 4 }, { type: "stealth", count: 8, gap: 1.5, delay: 10 } ] },
    { intro: "w15", groups: [ { type: "boss", count: 1, gap: 1.0, delay: 0 }, { type: "spam", count: 8, gap: 0.6, delay: 20 } ], teach: ["boss"] }
]

// The wave list of a stage with `count` waves: the first count-1 standard waves, then the boss wave.
function forStage(count) {
    var n = Math.max(2, Math.min(count, waves.length))
    if (n === waves.length) return waves
    return waves.slice(0, n - 1).concat([waves[waves.length - 1]])
}
