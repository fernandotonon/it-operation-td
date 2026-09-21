// Rule checks for the match simulation, without Qt:  node tests/sim.test.js
import { loadQmlJs } from "./qmljs-load.mjs"
import assert from "node:assert/strict"
import { fileURLToPath } from "node:url"
import { dirname, join } from "node:path"
const here = dirname(fileURLToPath(import.meta.url))
const cfg = (f) => loadQmlJs(join(here, "..", "app", "config", f))
const defs = { map: cfg("map.js").map ?? cfg("map.js"), towers: cfg("towers.js").towers, enemies: cfg("enemies.js").enemies,
               waves: cfg("waves.js").waves, tuning: cfg("tuning.js").tuning }
const mapMod = cfg("map.js"); defs.map = { board: mapMod.board, path: mapMod.path, sockets: mapMod.sockets, rack: mapMod.rack }
const { createSim } = loadQmlJs(join(here, "..", "app", "scripts", "Sim.js"))

let passed = 0
function test(name, fn) { try { fn(); passed++; console.log("ok   " + name) } catch (e) { console.log("FAIL " + name + "\n     " + (e.stack || e)); process.exitCode = 1 } }
function run(sim, seconds) { for (let t = 0; t < seconds; t += 1 / 30) sim.step(1 / 30) }
function runWave(sim, maxSeconds = 400) {
    sim.startWave()
    for (let t = 0; t < maxSeconds && sim.state.phase === "wave"; t += 1 / 30) sim.step(1 / 30)
    return sim.state.phase
}

test("geometry: path length and end position at the rack approach", () => {
    const sim = createSim(defs)
    assert.ok(sim.pathLength > 50 && sim.pathLength < 65, "path length " + sim.pathLength)
    const end = sim.posAt(sim.pathLength)
    assert.ok(Math.abs(end.x - 2.5) < 1e-6 && Math.abs(end.z - 1.4) < 1e-6)
})

test("economy: buy, upgrade and sell account correctly", () => {
    const sim = createSim(defs)
    const c0 = sim.state.credits
    const r = sim.placeTower("s1", "patch"); assert.ok(r.ok)
    assert.equal(sim.state.credits, c0 - 60)
    assert.equal(sim.placeTower("s1", "patch").reason, "occupied")
    assert.ok(sim.upgradeTower(r.tower.id).ok); assert.equal(sim.state.credits, c0 - 60 - 45)
    assert.ok(sim.upgradeTower(r.tower.id).ok); assert.equal(sim.state.credits, c0 - 60 - 45 - 70)
    assert.equal(sim.upgradeTower(r.tower.id).reason, "max")
    const refund = Math.floor((60 + 45 + 70) * defs.tuning.sellRefund)
    assert.equal(sim.sellValue(r.tower), refund)
    assert.ok(sim.sellTower(r.tower.id).ok)
    assert.equal(sim.state.credits, c0 - 175 + refund)
    assert.equal(sim.state.towers.length, 0)
    sim.state.credits = 10
    assert.equal(sim.placeTower("s2", "backup").reason, "credits")
    assert.equal(sim.placeTower("nope", "patch").reason, "socket")
})

test("waves: undefended wave 1 costs exactly 6 health, then the match continues", () => {
    const sim = createSim(defs)
    runWave(sim)
    assert.equal(sim.state.phase, "build")
    assert.equal(sim.state.health, defs.tuning.startHealth - 6)
    assert.equal(sim.state.enemies.filter(e => e.alive).length, 0)
})

test("defeat: health reaches zero -> lost, no further steps change anything", () => {
    const sim = createSim(defs)
    sim.state.health = 2
    runWave(sim)
    assert.equal(sim.state.phase, "lost")
    const snapshot = JSON.stringify(sim.state)
    run(sim, 5)
    assert.equal(JSON.stringify(sim.state), snapshot)
})

test("slow: capped at slowCap, strongest wins, duration refreshes, and it expires", () => {
    const sim = createSim(defs)
    sim.placeTower("s9", "traffic"); const t = sim.state.towers[0]; t.level = 2   // 50 % slow
    sim.placeTower("s1", "traffic")
    const e = sim.spawnEnemy("bug", 1.0)
    run(sim, 2)
    assert.ok(e.slow <= defs.tuning.slowCap + 1e-9, "slow " + e.slow)
    assert.ok(e.slow > 0)
    sim.state.towers.length = 0
    run(sim, 4)
    assert.equal(e.slow, 0)
})

test("stealth: untargetable until a scanner reveals it", () => {
    const sim = createSim(defs)
    sim.placeTower("s9", "patch")
    const e = sim.spawnEnemy("stealth", 0.5)
    run(sim, 1.5)
    assert.equal(e.hp, e.maxHp, "patch station must not hit a concealed packet")
    sim.placeTower("s1", "scanner"); sim.state.towers[1].level = 2
    e.dist = 3.5; run(sim, 1)
    assert.ok(e.revealedUntil > 0)
    assert.ok(e.hp < e.maxHp, "revealed packet takes damage")
})

test("trojan releases bugs on death and the wave waits for them", () => {
    const sim = createSim(defs)
    sim.state.wave = 7; sim.state.phase = "wave"; sim.state.remaining = 1
    const e = sim.spawnEnemy("trojan", 5)
    sim.placeTower("s9", "patch"); sim.state.towers[0].level = 2
    e.hp = 1; e.dist = 4.0
    run(sim, 1)
    assert.equal(e.alive, false)
    const bugs = sim.state.enemies.filter(x => x.alive && x.type === "bug")
    assert.equal(bugs.length, 3)
    assert.equal(sim.state.remaining, 3)
    assert.equal(sim.state.phase, "wave")
})

test("ransomware disables a tower briefly, respects immunity and reboot clears it", () => {
    const sim = createSim(defs)
    sim.placeTower("s1", "patch"); const t = sim.state.towers[0]
    const e = sim.spawnEnemy("lock", 6.0); e.speed = 0        // (-7.5, 1.5): 2.55 m from socket s1
    run(sim, 6)
    assert.ok(t.disabledUntil > 0, "tower was disabled")
    const firstDisable = t.disabledUntil
    assert.ok(!sim.towerActive(t) || sim.state.time > firstDisable)
    run(sim, 10)
    assert.equal(t.disabledUntil, firstDisable, "immunity prevents a second disable within 16 s")
    // reboot: offline for the downtime, then cleaned and boosted
    t.disabledUntil = sim.state.time + 100
    const r = sim.reboot(t.x, t.z); assert.ok(r.ok)
    assert.equal(sim.reboot(t.x, t.z).reason, "cooldown")
    assert.ok(!sim.towerActive(t))
    run(sim, defs.tuning.reboot.downtime + 0.2)
    assert.equal(t.disabledUntil, 0)
    assert.ok(t.boostMult > 1 && sim.towerActive(t))
    assert.equal(sim.state.credits, defs.tuning.startCredits - 60, "reboot never touches credits")
})

test("support boosts do not stack: strongest multiplier, longest duration", () => {
    const sim = createSim(defs)
    sim.placeTower("s6", "patch"); const p = sim.state.towers[0]
    sim.placeTower("s12", "backup"); sim.placeTower("s3", "backup")
    run(sim, 1)
    assert.ok(p.boostMult <= 1.6 + 1e-9, "boost " + p.boostMult)
    p.boostMult = 1.5; p.boostUntil = sim.state.time + 2
    const r = sim.reboot(p.x, p.z); assert.ok(r.ok)
    run(sim, defs.tuning.reboot.downtime + 0.1)
    assert.ok(Math.abs(p.boostMult - 1.5) < 1e-9)
    assert.ok(p.boostUntil <= sim.state.time + defs.tuning.reboot.boostDuration + 1e-6)
})

test("boss splits spam packets at thresholds and clearing wave 15 wins", () => {
    const sim = createSim(defs)
    sim.state.wave = 14; sim.state.credits = 100000
    ;["s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","s12"].forEach((s, i) => {
        sim.placeTower(s, i % 4 === 0 ? "firewall" : i % 4 === 1 ? "scanner" : i % 4 === 2 ? "traffic" : "patch")
        sim.state.towers[i].level = 2
    })
    let splits = 0
    sim.startWave()
    for (let t = 0; t < 400 && sim.state.phase === "wave"; t += 1 / 30) { sim.step(1 / 30); splits += sim.takeEvents().filter(e => e.type === "bossSplit").length }
    assert.equal(splits, 3)
    assert.equal(sim.state.phase, "won")
})

test("a reasonable full build survives all 15 waves (two different strategies)", () => {
    const strategies = [
        // A: pulse + firewall heavy, scanners for stealth
        { buys: { s1: "patch", s2: "firewall", s3: "firewall", s4: "patch", s5: "patch", s6: "backup", s9: "traffic", s11: "scanner", s12: "scanner", s10: "firewall", s7: "patch", s8: "patch" } },
        // B: slow + scanner heavy, patch stations everywhere
        { buys: { s1: "traffic", s2: "patch", s3: "scanner", s4: "traffic", s5: "scanner", s6: "backup", s9: "patch", s10: "patch", s11: "patch", s12: "firewall", s7: "firewall", s8: "patch" } }
    ]
    strategies.forEach((st, idx) => {
        const sim = createSim(defs)
        const order = Object.keys(st.buys)
        let healthTrace = []
        while (sim.state.phase === "build") {
            // spend: buy the next unbuilt socket if affordable, else upgrade the cheapest upgrade
            let acted = true
            while (acted) {
                acted = false
                for (const s of order) if (!sim.towerAt(s) && sim.canPlace(s, st.buys[s]).ok) { sim.placeTower(s, st.buys[s]); acted = true; break }
                if (!acted) {
                    const ups = sim.state.towers.filter(t => sim.upgradeCost(t) >= 0 && sim.upgradeCost(t) <= sim.state.credits).sort((a, b) => sim.upgradeCost(a) - sim.upgradeCost(b))
                    if (ups.length) { sim.upgradeTower(ups[0].id); acted = true }
                }
            }
            runWave(sim)
            healthTrace.push(sim.state.health)
            if (sim.state.wave >= 15) break
        }
        console.log("     strategy " + (idx + 1) + ": phase=" + sim.state.phase + " health=" + healthTrace.join(",") + " time=" + sim.state.time.toFixed(0) + "s")
        assert.equal(sim.state.phase, "won", "strategy " + (idx + 1) + " must win")
    })
})

test("restart: reset() leaves no enemies, towers, projectiles or timers", () => {
    const sim = createSim(defs)
    sim.placeTower("s1", "patch"); sim.startWave(); run(sim, 5)
    assert.ok(sim.state.enemies.length > 0)
    sim.reset()
    assert.deepEqual([sim.state.enemies.length, sim.state.towers.length, sim.state.projectiles.length, sim.state.spawnQueue.length, sim.state.time, sim.state.wave], [0, 0, 0, 0, 0, 0])
    assert.equal(sim.state.credits, defs.tuning.startCredits)
    assert.equal(sim.takeEvents().length, 0)
})

console.log(passed + " passed" + (process.exitCode ? ", with failures" : ""))
