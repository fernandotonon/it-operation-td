// Geometry checks for every stage:  node tests/stages.test.js
//  - route inside the board, axis-aligned segments, portal on the left edge
//  - sockets clear of the route (plate + path half widths), of each other and of the rack
//  - decoration clear of the route and of the sockets
import { loadQmlJs } from "./qmljs-load.mjs"
import { fileURLToPath } from "node:url"
import { dirname, join } from "node:path"
const here = dirname(fileURLToPath(import.meta.url))
const St = loadQmlJs(join(here, "..", "app", "config", "stages.js"))

function segDist(p, a, b) {
    const dx = b.x - a.x, dz = b.z - a.z, l2 = dx * dx + dz * dz
    let t = l2 ? ((p.x - a.x) * dx + (p.z - a.z) * dz) / l2 : 0; t = Math.max(0, Math.min(1, t))
    return Math.hypot(p.x - (a.x + dx * t), p.z - (a.z + dz * t))
}
function pathDist(p, path) { let d = 1e9; for (let i = 0; i < path.length - 1; i++) d = Math.min(d, segDist(p, path[i], path[i + 1])); return d }

let problems = 0
const MIN_SOCKET = St.pathWidth / 2 + 0.5 - 0.02   // plate half width 0.48 -> 1.13 m from the centre line
for (const st of St.stages) {
    const m = St.mapOf(st), issues = []
    if (Math.abs(st.path[0].x - St.board.minX) > 1e-6) issues.push("portal not on the left edge")
    for (let i = 0; i < st.path.length - 1; i++) {
        const a = st.path[i], b = st.path[i + 1]
        if (a.x !== b.x && a.z !== b.z) issues.push(`segment ${i} not axis-aligned`)
        if (Math.hypot(b.x - a.x, b.z - a.z) < 1.5) issues.push(`segment ${i} shorter than 1.5 m`)
        for (const p of [a, b]) if (p.x < St.board.minX || p.x > St.board.maxX || p.z < St.board.minZ + 0.65 || p.z > St.board.maxZ - 0.65) issues.push(`waypoint (${p.x},${p.z}) outside`)
    }
    const end = st.path[st.path.length - 1]
    const rackGap = Math.hypot(st.rack.x - end.x, st.rack.z - end.z)
    if (rackGap < 0.9 || rackGap > 1.6) issues.push(`rack ${rackGap.toFixed(2)} m from the route end (want 0.9-1.6)`)
    if (pathDist(st.rack, st.path.slice(0, -1)) < 1.4 && st.path.length > 2) {
        // the rack may only be close to the final approach, not to earlier corridors
        const d = Math.min(...st.path.slice(0, -2).map((a, i) => segDist(st.rack, a, st.path[i + 1])))
        if (d < 1.4) issues.push(`rack too close to an earlier corridor (${d.toFixed(2)} m)`)
    }
    if (st.sockets.length < 10 || st.sockets.length > 14) issues.push(`${st.sockets.length} sockets (want 10-14)`)
    st.sockets.forEach((s, i) => {
        const d = pathDist(s, st.path)
        if (d < MIN_SOCKET) issues.push(`${s.id} ${d.toFixed(2)} m from the route`)
        if (s.x < St.board.minX + 0.6 || s.x > St.board.maxX - 0.6 || s.z < St.board.minZ + 0.5 || s.z > St.board.maxZ - 0.5) issues.push(`${s.id} outside the board`)
        if (Math.hypot(s.x - st.rack.x, s.z - st.rack.z) < 1.4) issues.push(`${s.id} overlaps the rack`)
        for (let j = i + 1; j < st.sockets.length; j++) if (Math.hypot(s.x - st.sockets[j].x, s.z - st.sockets[j].z) < 1.1) issues.push(`${s.id} overlaps ${st.sockets[j].id}`)
    })
    m.decor.forEach(d => {
        if (pathDist(d, st.path) < 1.2) issues.push(`decor ${d.asset} at (${d.x},${d.z}) on the route`)
        for (const s of st.sockets) if (Math.hypot(s.x - d.x, s.z - d.z) < 1.0) issues.push(`decor ${d.asset} covers ${s.id}`)
        if (Math.hypot(d.x - st.rack.x, d.z - st.rack.z) < 1.2) issues.push(`decor ${d.asset} overlaps the rack`)
    })
    const len = st.path.slice(1).reduce((acc, p, i) => acc + Math.hypot(p.x - st.path[i].x, p.z - st.path[i].z), 0)
    console.log(`${issues.length ? "FAIL" : "ok  "} stage ${st.id}: ${st.waves} waves, hp x${st.hp}, route ${len.toFixed(1)} m, ${st.sockets.length} sockets, ${m.decor.length} decor`)
    issues.forEach(x => console.log("      - " + x)); problems += issues.length
}
if (problems) { console.log(problems + " problem(s)"); process.exitCode = 1 } else console.log("all stages valid")
