// Operação TI - the match simulation. Deliberately Qt-free (.pragma library, no engine, no clock,
// no randomness): the presentation calls step(dt) and reads state; `node tests/sim.test.js` checks
// the rules in a second. All positions are metres on the board (map.js), all times seconds.
//
// createSim(defs) -> sim; defs = { map, towers, enemies, waves, tuning }
//   sim.state                     credits, health, wave, phase (build|wave|won|lost), time, enemies, towers,
//                                 projectiles, remaining, rebootReadyAt, rebooting
//   sim.step(dt)                  advance (already speed-scaled; 0 while paused)
//   sim.placeTower(socketId, typeId) / upgradeTower(towerId) / sellTower(towerId)  -> { ok, reason }
//   sim.startWave()               begins the next wave from the build phase
//   sim.reboot(x, z)              Emergency Reboot centred on a point -> { ok, reason, towers: [...] }
//   sim.previewWave(index)        [{ type, count }] for the wave card
//   sim.takeEvents()              presentation events since the last call (spawn, shot, hit, death, ...)
.pragma library

function createSim(defs) {
    var map = defs.map, TW = defs.towers, EN = defs.enemies, WAVES = defs.waves, T = defs.tuning
    var sim = {}
    var nextId = 1
    var events = []
    var S = null            // the match state, created by reset()

    // ---- path geometry ---------------------------------------------------------------------
    var segs = [], pathLength = 0
    for (var i = 0; i < map.path.length - 1; i++) {
        var a = map.path[i], b = map.path[i + 1]
        var len = Math.hypot(b.x - a.x, b.z - a.z)
        segs.push({ a: a, b: b, len: len, start: pathLength, dx: (b.x - a.x) / len, dz: (b.z - a.z) / len })
        pathLength += len
    }
    function posAt(dist) {
        if (dist <= 0) return { x: segs[0].a.x, z: segs[0].a.z, dx: segs[0].dx, dz: segs[0].dz }
        for (var i = 0; i < segs.length; i++) {
            var s = segs[i]
            if (dist <= s.start + s.len || i === segs.length - 1) {
                var t = Math.min(dist - s.start, s.len)
                return { x: s.a.x + s.dx * t, z: s.a.z + s.dz * t, dx: s.dx, dz: s.dz }
            }
        }
    }
    sim.posAt = posAt
    sim.pathLength = pathLength

    // ---- state -----------------------------------------------------------------------------
    function socketById(id) { for (var i = 0; i < map.sockets.length; i++) if (map.sockets[i].id === id) return map.sockets[i]; return null }
    function towerAt(socketId) { for (var i = 0; i < S.towers.length; i++) if (S.towers[i].socket === socketId) return S.towers[i]; return null }
    function towerById(id) { for (var i = 0; i < S.towers.length; i++) if (S.towers[i].id === id) return S.towers[i]; return null }
    sim.towerAt = towerAt
    sim.towerById = towerById

    function reset() {
        S = {
            credits: T.startCredits, health: T.startHealth, wave: 0, phase: "build", time: 0,
            enemies: [], towers: [], projectiles: [], remaining: 0,
            spawnQueue: [], rebootReadyAt: 0, rebooting: null, accumulator: 0,
            stats: { defeated: 0, escaped: 0, spent: 0, earned: 0 }
        }
        sim.state = S
        events = []
        nextId = 1
    }
    sim.reset = reset
    reset()

    function emit(type, data) { data = data || {}; data.type = type; data.time = S.time; events.push(data) }
    sim.takeEvents = function () { var e = events; events = []; return e }

    // ---- economy / building ----------------------------------------------------------------
    sim.towerCost = function (typeId) { return TW[typeId] ? TW[typeId].cost : 0 }
    sim.upgradeCost = function (tower) {
        var def = TW[tower.type]
        return tower.level + 1 < def.levels.length ? def.levels[tower.level + 1].cost : -1
    }
    sim.sellValue = function (tower) { return Math.floor(tower.invested * T.sellRefund) }
    sim.levelOf = function (tower) { return TW[tower.type].levels[tower.level] }
    sim.canPlace = function (socketId, typeId) {
        if (S.phase === "won" || S.phase === "lost") return { ok: false, reason: "over" }
        if (!TW[typeId]) return { ok: false, reason: "type" }
        if (!socketById(socketId)) return { ok: false, reason: "socket" }
        if (towerAt(socketId)) return { ok: false, reason: "occupied" }
        if (S.credits < TW[typeId].cost) return { ok: false, reason: "credits" }
        return { ok: true }
    }
    sim.placeTower = function (socketId, typeId) {
        var c = sim.canPlace(socketId, typeId)
        if (!c.ok) return c
        var sock = socketById(socketId), def = TW[typeId]
        var t = { id: nextId++, type: typeId, socket: socketId, x: sock.x, z: sock.z, level: 0,
                  cooldown: 0.4, invested: def.cost, disabledUntil: 0, immuneUntil: 0, rebootUntil: 0,
                  boostMult: 1, boostUntil: 0, kills: 0, aim: 0, target: 0, lastShot: -1 }
        S.towers.push(t)
        S.credits -= def.cost; S.stats.spent += def.cost
        emit("place", { tower: t.id, towerType: typeId, x: t.x, z: t.z })
        return { ok: true, tower: t }
    }
    sim.upgradeTower = function (towerId) {
        var t = towerById(towerId)
        if (!t) return { ok: false, reason: "tower" }
        if (S.phase === "won" || S.phase === "lost") return { ok: false, reason: "over" }
        var cost = sim.upgradeCost(t)
        if (cost < 0) return { ok: false, reason: "max" }
        if (S.credits < cost) return { ok: false, reason: "credits" }
        S.credits -= cost; S.stats.spent += cost
        t.invested += cost; t.level += 1
        emit("upgrade", { tower: t.id, level: t.level, x: t.x, z: t.z })
        return { ok: true }
    }
    sim.sellTower = function (towerId) {
        var t = towerById(towerId)
        if (!t) return { ok: false, reason: "tower" }
        if (S.phase === "won" || S.phase === "lost") return { ok: false, reason: "over" }
        var value = sim.sellValue(t)
        S.credits += value; S.stats.earned += value
        S.towers.splice(S.towers.indexOf(t), 1)
        // any projectile in flight from this tower keeps flying; support boosts it granted simply expire
        emit("sell", { tower: t.id, value: value, x: t.x, z: t.z })
        return { ok: true, value: value }
    }

    // ---- waves ------------------------------------------------------------------------------
    sim.previewWave = function (index) {
        var w = WAVES[index]; if (!w) return []
        var counts = {}, order = []
        w.groups.forEach(function (g) { if (!counts[g.type]) { counts[g.type] = 0; order.push(g.type) } counts[g.type] += g.count })
        return order.map(function (k) { return { type: k, count: counts[k] } })
    }
    sim.waveCount = WAVES.length
    sim.startWave = function () {
        if (S.phase !== "build" || S.wave >= WAVES.length) return { ok: false, reason: S.phase }
        S.wave += 1
        S.phase = "wave"
        S.waveStartedAt = S.time
        var w = WAVES[S.wave - 1]
        S.spawnQueue = []
        w.groups.forEach(function (g) {
            for (var i = 0; i < g.count; i++) S.spawnQueue.push({ at: S.time + g.delay + i * g.gap, type: g.type })
        })
        S.spawnQueue.sort(function (a, b) { return a.at - b.at })
        S.remaining = S.spawnQueue.length
        emit("waveStart", { wave: S.wave })
        return { ok: true }
    }
    function hpForWave(base) { return Math.round(base * (T.hpMultiplier || 1) * (1 + T.hpGrowthPerWave * (S.wave - 1))) }
    function spawnEnemy(type, dist, hp) {
        var d = EN[type]
        var baseHp = hp || hpForWave(d.hp) * (d.boss ? (T.bossScale || 1) : 1)
        var e = { id: nextId++, type: type, dist: dist || 0, hp: Math.round(baseHp), maxHp: Math.round(baseHp),
                  speed: d.speed, slow: 0, slowUntil: 0, concealed: !!d.concealed, revealedUntil: 0,
                  alive: true, x: 0, z: 0, dx: 1, dz: 0, nextAbilityAt: S.time + (d.disable ? d.disable.period * 0.5 : 0),
                  thresholdIndex: 0, radius: d.radius, seed: (e && e.id) || nextId }
        var p = posAt(e.dist); e.x = p.x; e.z = p.z; e.dx = p.dx; e.dz = p.dz
        S.enemies.push(e)
        emit("spawn", { enemy: e.id, enemyType: type, x: e.x, z: e.z })
        return e
    }
    sim.spawnEnemy = spawnEnemy   // exposed for tests/debug tools
    sim.isRevealed = function (e) { return !e.concealed || e.revealedUntil > S.time }
    sim.towerActive = function (t) { return t.disabledUntil <= S.time && t.rebootUntil <= S.time }

    // ---- emergency reboot --------------------------------------------------------------------
    sim.rebootReady = function () { return S.time >= S.rebootReadyAt && !S.rebooting && S.phase !== "won" && S.phase !== "lost" }
    sim.rebootCooldownLeft = function () { return Math.max(0, S.rebootReadyAt - S.time) }
    sim.towersInReboot = function (x, z) {
        return S.towers.filter(function (t) { return Math.hypot(t.x - x, t.z - z) <= T.reboot.radius })
    }
    sim.reboot = function (x, z) {
        if (!sim.rebootReady()) return { ok: false, reason: "cooldown" }
        var affected = sim.towersInReboot(x, z)
        if (affected.length === 0) return { ok: false, reason: "empty" }
        affected.forEach(function (t) { t.rebootUntil = S.time + T.reboot.downtime })
        S.rebooting = { x: x, z: z, until: S.time + T.reboot.downtime, towers: affected.map(function (t) { return t.id }) }
        S.rebootReadyAt = S.time + T.reboot.cooldown
        emit("rebootStart", { x: x, z: z, towers: S.rebooting.towers })
        return { ok: true, towers: affected }
    }
    function finishReboot() {
        var r = S.rebooting
        r.towers.forEach(function (id) {
            var t = towerById(id); if (!t) return
            t.disabledUntil = 0                    // negative effects removed
            applyBoost(t, T.reboot.boost, T.reboot.boostDuration)
        })
        emit("rebootDone", { x: r.x, z: r.z, towers: r.towers })
        S.rebooting = null
    }
    // Support/reboot boosts never stack: the strongest multiplier wins, the longest end time is kept.
    function applyBoost(t, mult, duration) {
        t.boostMult = t.boostUntil > S.time ? Math.max(t.boostMult, mult) : mult
        t.boostUntil = Math.max(t.boostUntil, S.time + duration)
        emit("boost", { tower: t.id, x: t.x, z: t.z })
    }
    // Slows never stack either: strongest slow (capped), longest duration.
    function applySlow(e, amount, duration) {
        var a = Math.min(amount, T.slowCap)
        e.slow = e.slowUntil > S.time ? Math.max(e.slow, a) : a
        e.slowUntil = Math.max(e.slowUntil, S.time + duration)
    }

    // ---- combat helpers ----------------------------------------------------------------------
    function inRange(t, e, range) { return Math.hypot(t.x - e.x, t.z - e.z) <= range + e.radius }
    function pickTarget(t, range) {
        var best = null
        for (var i = 0; i < S.enemies.length; i++) {
            var e = S.enemies[i]
            if (!e.alive || !sim.isRevealed(e)) continue
            if (!inRange(t, e, range)) continue
            if (!best || e.dist > best.dist) best = e     // furthest along the route first
        }
        return best
    }
    function damageEnemy(e, amount, byTower) {
        if (!e.alive) return
        e.hp -= amount
        emit("hit", { enemy: e.id, x: e.x, z: e.z, amount: amount })
        var d = EN[e.type]
        if (d.thresholds) {
            while (e.thresholdIndex < d.thresholds.length && e.hp / e.maxHp <= d.thresholds[e.thresholdIndex]) {
                e.thresholdIndex++
                for (var k = 0; k < d.spawn.count; k++) spawnEnemy(d.spawn.type, Math.max(0, e.dist - 0.3 * k))
                S.remaining += d.spawn.count
                emit("bossSplit", { enemy: e.id, x: e.x, z: e.z })
            }
        }
        if (e.hp <= 0) killEnemy(e, byTower)
    }
    function killEnemy(e, byTower) {
        e.alive = false
        var d = EN[e.type]
        S.credits += d.bounty; S.stats.earned += d.bounty; S.stats.defeated += 1
        if (byTower) byTower.kills += 1
        emit("death", { enemy: e.id, enemyType: e.type, x: e.x, z: e.z, bounty: d.bounty })
        if (d.onDeath && d.onDeath.spawn) {
            for (var k = 0; k < d.onDeath.count; k++)
                spawnEnemy(d.onDeath.spawn, Math.max(0, e.dist - 0.4 * (k - 1)), Math.round(hpForWave(EN[d.onDeath.spawn].hp) * d.onDeath.hpFactor))
            S.remaining += d.onDeath.count
        }
        S.remaining -= 1
    }
    function escapeEnemy(e) {
        e.alive = false
        S.health -= EN[e.type].damage
        S.stats.escaped += 1
        S.remaining -= 1
        emit("escape", { enemy: e.id, enemyType: e.type, damage: EN[e.type].damage })
        if (S.health <= 0) { S.health = 0; S.phase = "lost"; emit("lose", {}) }
    }
    function fire(t, lvl, def, target) {
        if (def.role === "scan" || !def.projectile || def.projectile.kind === "beam") {
            damageEnemy(target, lvl.damage, t)
            emit("shot", { tower: t.id, towerType: t.type, x: t.x, z: t.z, tx: target.x, tz: target.z, kind: "beam" })
            return
        }
        S.projectiles.push({ id: nextId++, tower: t.id, towerType: t.type, kind: def.projectile.kind, x: t.x, z: t.z, y: 1.0,
                             target: target.id, tx: target.x, tz: target.z, speed: def.projectile.speed,
                             damage: lvl.damage, splash: lvl.splash || 0, alive: true })
        emit("shot", { tower: t.id, towerType: t.type, x: t.x, z: t.z, tx: target.x, tz: target.z, kind: def.projectile.kind })
    }

    // ---- the step ----------------------------------------------------------------------------
    function substep(dt) {
        S.time += dt
        var now = S.time
        // spawns
        while (S.spawnQueue.length && S.spawnQueue[0].at <= now) spawnEnemy(S.spawnQueue.shift().type, 0)
        // enemies move
        for (var i = 0; i < S.enemies.length; i++) {
            var e = S.enemies[i]
            if (!e.alive) continue
            if (e.slowUntil <= now) e.slow = 0
            e.dist += e.speed * (1 - e.slow) * dt
            var p = posAt(e.dist); e.x = p.x; e.z = p.z; e.dx = p.dx; e.dz = p.dz
            if (e.dist >= pathLength) { escapeEnemy(e); if (S.phase === "lost") return; continue }
            var d = EN[e.type]
            if (d.disable && now >= e.nextAbilityAt) {
                // ransomware: briefly disable one nearby tower that was not disabled recently
                var victim = null, bestDist = 1e9
                for (var k = 0; k < S.towers.length; k++) {
                    var t = S.towers[k]
                    var dd = Math.hypot(t.x - e.x, t.z - e.z)
                    if (dd <= d.disable.range && t.immuneUntil <= now && sim.towerActive(t) && dd < bestDist) { victim = t; bestDist = dd }
                }
                if (victim) {
                    victim.disabledUntil = now + d.disable.duration
                    victim.immuneUntil = now + d.disable.immunity
                    e.nextAbilityAt = now + d.disable.period
                    emit("disable", { tower: victim.id, enemy: e.id, x: victim.x, z: victim.z, duration: d.disable.duration })
                } else e.nextAbilityAt = now + 1.0
            }
        }
        // scanners reveal
        for (var k = 0; k < S.towers.length; k++) {
            var t = S.towers[k]
            if (TW[t.type].role !== "scan" || !sim.towerActive(t)) continue
            var range = TW[t.type].levels[t.level].range
            for (var i = 0; i < S.enemies.length; i++) {
                var e = S.enemies[i]
                if (e.alive && e.concealed && inRange(t, e, range)) {
                    if (e.revealedUntil <= now) emit("reveal", { enemy: e.id, x: e.x, z: e.z })
                    e.revealedUntil = now + T.revealLinger
                }
            }
        }
        // towers act
        for (var k = 0; k < S.towers.length; k++) {
            var t = S.towers[k]
            var def = TW[t.type], lvl = def.levels[t.level]
            if (t.boostUntil <= now) t.boostMult = 1
            if (!sim.towerActive(t)) { t.target = 0; continue }
            t.cooldown -= dt
            if (t.cooldown > 0) continue
            if (def.role === "support") {
                // boost the nearby attacking tower(s) that have gone longest without a boost
                var cands = S.towers.filter(function (o) { return o !== t && TW[o.type].role !== "support" && Math.hypot(o.x - t.x, o.z - t.z) <= lvl.range })
                cands.sort(function (a, b) { return a.boostUntil - b.boostUntil })
                var n = Math.min(lvl.targets, cands.length)
                for (var c = 0; c < n; c++) applyBoost(cands[c], lvl.boost, lvl.boostDuration)
                if (n > 0) emit("support", { tower: t.id, x: t.x, z: t.z, targets: cands.slice(0, n).map(function (o) { return o.id }) })
                t.cooldown = lvl.period
                continue
            }
            if (def.role === "slow") {
                var any = false
                for (var i = 0; i < S.enemies.length; i++) {
                    var e = S.enemies[i]
                    if (e.alive && sim.isRevealed(e) && inRange(t, e, lvl.range)) { applySlow(e, lvl.slow, lvl.slowDuration); any = true }
                }
                if (any) { emit("slowPulse", { tower: t.id, x: t.x, z: t.z, range: lvl.range }); t.cooldown = 1 / (lvl.rate * t.boostMult) }
                else t.cooldown = 0.1
                continue
            }
            var target = pickTarget(t, lvl.range)
            if (!target) { t.cooldown = 0.05; t.target = 0; continue }
            t.target = target.id
            t.aim = Math.atan2(target.x - t.x, target.z - t.z) * 180 / Math.PI
            fire(t, lvl, def, target)
            t.lastShot = now
            t.cooldown = 1 / (lvl.rate * t.boostMult)
        }
        // projectiles
        for (var pI = 0; pI < S.projectiles.length; pI++) {
            var pr = S.projectiles[pI]
            if (!pr.alive) continue
            var tgt = null
            for (var i = 0; i < S.enemies.length; i++) if (S.enemies[i].id === pr.target) { tgt = S.enemies[i]; break }
            if (tgt && tgt.alive) { pr.tx = tgt.x; pr.tz = tgt.z }
            var ddx = pr.tx - pr.x, ddz = pr.tz - pr.z, dist = Math.hypot(ddx, ddz)
            var travel = pr.speed * dt
            if (dist <= travel + T.projectileHitRadius) {
                pr.x = pr.tx; pr.z = pr.tz; pr.alive = false
                var owner = towerById(pr.tower)
                if (pr.splash > 0) {
                    for (var i = 0; i < S.enemies.length; i++) {
                        var e = S.enemies[i]
                        if (e.alive && sim.isRevealed(e) && Math.hypot(e.x - pr.x, e.z - pr.z) <= pr.splash + e.radius) damageEnemy(e, pr.damage, owner)
                    }
                    emit("burst", { x: pr.x, z: pr.z, radius: pr.splash })
                } else if (tgt && tgt.alive) damageEnemy(tgt, pr.damage, owner)
            } else { pr.x += ddx / dist * travel; pr.z += ddz / dist * travel }
        }
        // reboot finished?
        if (S.rebooting && now >= S.rebooting.until) finishReboot()
        // cleanup
        if (S.enemies.length > 64 || S.time % 1 < dt) S.enemies = S.enemies.filter(function (e) { return e.alive })
        S.projectiles = S.projectiles.filter(function (p) { return p.alive })
        // wave over?
        if (S.phase === "wave" && S.spawnQueue.length === 0 && S.remaining <= 0) {
            var bonus = T.waveBonusBase + T.waveBonusPerWave * S.wave
            S.credits += bonus; S.stats.earned += bonus
            S.remaining = 0
            if (S.wave >= WAVES.length) { S.phase = "won"; emit("win", { bonus: bonus }) }
            else { S.phase = "build"; emit("waveClear", { wave: S.wave, bonus: bonus }) }
        }
    }
    sim.step = function (dt) {
        if (S.phase === "won" || S.phase === "lost") return
        S.accumulator += dt
        var steps = 0
        while (S.accumulator >= T.fixedStep && steps < T.maxSubSteps) {
            substep(T.fixedStep); S.accumulator -= T.fixedStep; steps++
            if (S.phase === "won" || S.phase === "lost") { S.accumulator = 0; break }
        }
        if (steps >= T.maxSubSteps) S.accumulator = 0   // never spiral after a long stall
    }
    sim.aliveEnemies = function () { return S.enemies.filter(function (e) { return e.alive }) }
    return sim
}
