// Balance probe (not a pass/fail test): plays the 15 waves with bots of different skill and prints
// health per wave, so tuning changes can be judged quickly.   node tests/balance-probe.mjs
import { loadQmlJs } from "./qmljs-load.mjs"
import { fileURLToPath } from "node:url"
import { dirname, join } from "node:path"
const here = dirname(fileURLToPath(import.meta.url))
const cfg = (f) => loadQmlJs(join(here, "..", "app", "config", f))
const St = cfg("stages.js")
const defs = { map: St.mapOf(St.stages[0]), towers: cfg("towers.js").towers,
               enemies: cfg("enemies.js").enemies, waves: cfg("waves.js").waves, tuning: cfg("tuning.js").tuning }
const { createSim } = loadQmlJs(join(here, "..", "app", "scripts", "Sim.js"))

function play(name, buys, opts = {}) {
    const sim = createSim(defs)
    const order = Object.keys(buys)
    const trace = []
    while (sim.state.phase === "build") {
        let acted = true
        while (acted) {
            acted = false
            for (const s of order) if (!sim.towerAt(s) && sim.canPlace(s, buys[s]).ok) { sim.placeTower(s, buys[s]); acted = true; break }
            if (!acted && opts.upgrade !== false) {
                const ups = sim.state.towers.filter(t => sim.upgradeCost(t) >= 0 && sim.upgradeCost(t) <= sim.state.credits).sort((a, b) => sim.upgradeCost(a) - sim.upgradeCost(b))
                if (ups.length) { sim.upgradeTower(ups[0].id); acted = true }
            }
        }
        sim.startWave()
        for (let t = 0; t < 600 && sim.state.phase === "wave"; t += 1 / 30) sim.step(1 / 30)
        trace.push(sim.state.health)
        if (sim.state.wave >= 15 || sim.state.phase === "lost") break
    }
    console.log(name.padEnd(34), sim.state.phase.padEnd(5), "health:", trace.join(","), " t=" + Math.round(sim.state.time) + "s")
}
play("all patch, no upgrades", { s1: "patch", s2: "patch", s3: "patch", s4: "patch", s5: "patch", s6: "patch", s9: "patch", s12: "patch" }, { upgrade: false })
play("all patch, upgrades", { s1: "patch", s2: "patch", s3: "patch", s4: "patch", s5: "patch", s6: "patch", s9: "patch", s12: "patch" })
play("4 towers only", { s1: "patch", s3: "firewall", s9: "traffic", s11: "scanner" })
play("no scanner (stealth leaks)", { s1: "patch", s2: "firewall", s3: "firewall", s4: "patch", s5: "patch", s9: "traffic", s12: "patch" })
play("balanced 8", { s1: "patch", s2: "firewall", s3: "firewall", s9: "traffic", s11: "scanner", s6: "backup", s5: "patch", s4: "patch" })
play("balanced 12 (greedy)", { s1: "patch", s2: "firewall", s3: "firewall", s4: "patch", s5: "patch", s6: "backup", s9: "traffic", s11: "scanner", s12: "scanner", s10: "firewall", s7: "patch", s8: "patch" })
