// Every stage played by the greedy bot (buys the sockets in listed order, upgrades the cheapest upgrade):
//   node tests/stage-balance.mjs
// Prints phase and health per wave; a stage the bot cannot win with the given budget is a red flag.
import { loadQmlJs } from "./qmljs-load.mjs"
import { fileURLToPath } from "node:url"
import { dirname, join } from "node:path"
const here = dirname(fileURLToPath(import.meta.url))
const cfg = (f) => loadQmlJs(join(here, "..", "app", "config", f))
const St = cfg("stages.js"), W = cfg("waves.js"), tuning = cfg("tuning.js").tuning
const towers = cfg("towers.js").towers, enemies = cfg("enemies.js").enemies
const { createSim } = loadQmlJs(join(here, "..", "app", "scripts", "Sim.js"))
// roles by socket hint, the way the in-game hints suggest them
function rolesFor(sockets) {
    let backup = 0, alt = 0, r = 0
    return sockets.map(s => {
        if (s.hint === "splash") return "firewall"
        if (s.hint === "support") return backup++ === 0 ? "backup" : "traffic"
        if (s.hint === "range") return (r++ % 2) ? "patch" : "scanner"
        return (alt++ % 3 === 2) ? "traffic" : "patch"       // corners / entrance
    })
}

let failures = 0
for (const st of St.stages) {
    const map = St.mapOf(st)
    const sim = createSim({ map, towers, enemies, waves: W.forStage(st.waves), tuning: Object.assign({}, tuning, { startCredits: st.credits, hpMultiplier: st.hp, bossScale: st.waves / 15 }) })
    const roles = rolesFor(st.sockets); const buys = {}; st.sockets.forEach((s, i) => buys[s.id] = roles[i])
    const order = Object.keys(buys), trace = []
    while (sim.state.phase === "build") {
        let acted = true
        while (acted) {
            acted = false
            for (const s of order) if (!sim.towerAt(s) && sim.canPlace(s, buys[s]).ok) { sim.placeTower(s, buys[s]); acted = true; break }
            if (!acted) {
                const ups = sim.state.towers.filter(t => sim.upgradeCost(t) >= 0 && sim.upgradeCost(t) <= sim.state.credits).sort((a, b) => sim.upgradeCost(a) - sim.upgradeCost(b))
                if (ups.length) { sim.upgradeTower(ups[0].id); acted = true }
            }
        }
        sim.startWave()
        for (let t = 0; t < 900 && sim.state.phase === "wave"; t += 1 / 30) sim.step(1 / 30)
        trace.push(sim.state.health)
        if (sim.state.phase === "lost" || sim.state.wave >= sim.waveCount) break
    }
    if (sim.state.phase !== "won") failures++
    console.log(`stage ${String(st.id).padStart(2)} (${st.waves} waves, hp x${st.hp}, ${st.credits} credits, ${sim.pathLength.toFixed(0)} m): ${sim.state.phase.padEnd(5)} health ${trace.join(",")}  t=${Math.round(sim.state.time)}s`)
}
console.log(failures ? failures + " stage(s) not won by the bot" : "bot wins every stage")
process.exitCode = failures ? 1 : 0
