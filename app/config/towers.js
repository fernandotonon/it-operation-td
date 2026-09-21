// Tower definitions. Three levels each (base + two upgrades). Ranges in metres, rates in shots/s.
// `role`: single | splash | slow | scan | support. Gameplay code only reads these tables.
.pragma library

var towers = {
    patch: {
        id: "patch", role: "single", cost: 60, asset: "laptop", accent: "#2f7ff2",
        levels: [
            { damage: 12, rate: 1.2, range: 3.0, cost: 0 },
            { damage: 18, rate: 1.5, range: 3.1, cost: 45 },
            { damage: 27, rate: 1.9, range: 3.3, cost: 70 }
        ],
        projectile: { speed: 10, kind: "pulse" }
    },
    firewall: {
        id: "firewall", role: "splash", cost: 100, asset: "server_2u", accent: "#f2662f",
        levels: [
            { damage: 16, rate: 0.7, range: 2.5, splash: 1.2, cost: 0 },
            { damage: 22, rate: 0.75, range: 2.6, splash: 1.5, cost: 70 },
            { damage: 30, rate: 0.85, range: 2.8, splash: 1.8, cost: 100 }
        ],
        projectile: { speed: 7, kind: "burst" }
    },
    traffic: {
        id: "traffic", role: "slow", cost: 80, asset: "switch", accent: "#22b8e6",
        levels: [
            { slow: 0.35, slowDuration: 2.0, range: 2.6, rate: 0.66, cost: 0 },
            { slow: 0.45, slowDuration: 2.5, range: 3.0, rate: 0.66, cost: 55 },
            { slow: 0.5,  slowDuration: 3.0, range: 3.4, rate: 0.75, cost: 80 }
        ]
    },
    scanner: {
        id: "scanner", role: "scan", cost: 90, asset: "monitor", accent: "#3fd07a",
        levels: [
            { damage: 6,  rate: 2.0, range: 3.2, cost: 0 },
            { damage: 9,  rate: 2.0, range: 3.8, cost: 60 },
            { damage: 13, rate: 2.2, range: 4.4, cost: 85 }
        ],
        projectile: { kind: "beam" }
    },
    backup: {
        id: "backup", role: "support", cost: 110, asset: "ups", accent: "#f2c02f",
        levels: [
            { range: 2.6, boost: 1.5, boostDuration: 4.0, period: 8.0, targets: 1, cost: 0 },
            { range: 3.2, boost: 1.5, boostDuration: 5.0, period: 8.0, targets: 1, cost: 70 },
            { range: 3.8, boost: 1.6, boostDuration: 6.0, period: 7.0, targets: 2, cost: 100 }
        ]
    }
}
var order = ["patch", "firewall", "traffic", "scanner", "backup"]
