// Global balance knobs. Everything the simulation needs that is not a tower/enemy/wave table.
.pragma library

var tuning = {
    startCredits: 200,
    startHealth: 20,
    waveBonusBase: 20,          // credits on wave clear: base + perWave * wave
    waveBonusPerWave: 5,
    hpGrowthPerWave: 0.10,      // enemy hp *= 1 + growth * (wave - 1)
    sellRefund: 0.7,            // fraction of everything invested in the tower
    slowCap: 0.5,               // an enemy is never slowed by more than 50 %
    revealLinger: 0.6,          // seconds a stealth enemy stays revealed after leaving scanner range
    reboot: { radius: 2.5, downtime: 3.0, boost: 1.5, boostDuration: 6.0, cooldown: 45.0 },
    projectileHitRadius: 0.25,
    fixedStep: 1 / 60,
    maxSubSteps: 8
}
