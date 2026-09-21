// The match: owns the simulation, the clock (pause / 1x / 2x), selection and build flow, the Emergency
// Reboot aiming mode, tutorial cards, persistence and audio. Presentation lives in Board3D and Hud.
import QtQuick
import "scripts/Sim.js" as SimJs
import "config/map.js" as Map
import "config/towers.js" as Towers
import "config/enemies.js" as Enemies
import "config/waves.js" as Waves
import "config/tuning.js" as Tuning

FocusScope {
    id: game
    signal quitRequested()

    // ---- state mirrored from the simulation for QML bindings ----------------------------------------
    property string screen: "title"            // title | playing | paused | won | lost
    property real speed: 1
    property bool paused: false
    readonly property bool running: screen === "playing" && !paused && !tutorial.visible
    property int credits: 0
    property int health: 0
    property int wave: 0
    property int remaining: 0
    property string phase: "build"
    property real simTime: 0
    property real rebootLeft: 0
    property bool rebootReady: false
    property int stateVersion: 0
    property string selectedSocket: ""
    property int selectedTower: 0
    property string armedType: ""
    property bool rebootMode: false
    property var toasts: []                    // { text, until }
    property var statusLabels: []              // { x, y, text, tone } screen-space labels for locked/rebooting towers
    property real matchStart: 0
    property bool newRecord: false
    readonly property int waveCount: Waves.waves.length
    readonly property var towerOrder: Towers.order

    property var sim: SimJs.createSim({ map: { board: Map.board, path: Map.path, sockets: Map.sockets, rack: Map.rack },
                                        towers: Towers.towers, enemies: Enemies.enemies, waves: Waves.waves, tuning: Tuning.tuning })

    SaveSystem { id: save }
    AudioManager { id: audio; volume: save.settings.volume; muted: save.settings.muted }
    Component.onCompleted: { save.load(); Strings.lang = save.settings.language || "en"; refresh(); console.log("OperacaoTI: save backend", save.backend, "audio bridge", audio.web ? "WebAudio" : "Clayground.Sound") }

    // ---- clock: everything simulated goes through sim.step, so pause and speed are consistent -----
    FrameAnimation {
        running: game.running
        onTriggered: game.tick(Math.min(frameTime, 0.1))
    }
    function tick(dt) {
        sim.step(dt * speed)
        board.sync(dt * speed)
        handleEvents()
        refresh()
        updateStatusLabels()
        if (sim.state.phase === "won" || sim.state.phase === "lost") finishMatch(sim.state.phase === "won")
    }
    function refresh() {
        var S = sim.state
        credits = S.credits; health = S.health; wave = S.wave; remaining = S.remaining; phase = S.phase; simTime = S.time
        rebootLeft = sim.rebootCooldownLeft(); rebootReady = sim.rebootReady()
        board.simTime = S.time; board.healthRatio = S.health / Tuning.tuning.startHealth
        stateVersion++
        if (toasts.length && toasts[0].until < S.time) { toasts = toasts.filter(function (t) { return t.until >= S.time }) }
    }

    // ---- match lifecycle --------------------------------------------------------------------------
    function startMatch() {
        sim.reset(); board.reset(); board.celebrate = false
        selectedSocket = ""; selectedTower = 0; armedType = ""; rebootMode = false; toasts = []; statusLabels = []
        speed = 1; paused = false; newRecord = false
        screen = "playing"
        refresh()
        matchStart = 0
        showTeachFor(0, function () {})
    }
    function finishMatch(won) {
        if (screen !== "playing") return
        screen = won ? "won" : "lost"
        board.celebrate = won
        audio.play(won ? "win" : "lose")
        newRecord = save.recordMatch(won, sim.state.wave, sim.state.time)
        rebootMode = false; board.rebootCursor = null
    }
    function togglePause() {
        if (screen === "playing") { paused = true; screen = "paused" }
        else if (screen === "paused") { screen = "playing"; paused = false }
        audio.play("click")
    }
    function backToTitle() { screen = "title"; paused = false; sim.reset(); board.reset(); refresh() }

    // ---- waves and tutorial cards -------------------------------------------------------------------
    function nextWaveIndex() { return sim.state.wave }   // 0-based index of the wave that starts next
    function showTeachFor(waveIndex, then) {
        var w = Waves.waves[waveIndex]
        var keys = (w && w.teach ? w.teach : []).filter(function (k) { return !save.tutorialSeen(k) })
        if (keys.length === 0) { then(); return }
        tutorial.keys = keys
        tutorial.onDoneCallback = function () { keys.forEach(save.markTutorialSeen); tutorial.keys = []; then() }
    }
    function requestStartWave() {
        if (sim.state.phase !== "build" || screen !== "playing") return
        showTeachFor(nextWaveIndex(), function () {
            var r = sim.startWave()
            if (r.ok) { audio.play("wave"); refresh() }
        })
    }
    function previewNextWave() { return sim.previewWave(nextWaveIndex()) }
    function nextWaveIntro() { var w = Waves.waves[nextWaveIndex()]; return w ? Strings.t(w.intro) : "" }

    // ---- selection / build flow -----------------------------------------------------------------------
    function onBoardTapped(x, z) {
        if (screen !== "playing") return
        if (rebootMode) { doReboot(x, z); return }
        var sock = board.socketNear(x, z, 1.0)
        if (!sock) { clearSelection(); return }
        var t = sim.towerAt(sock.id)
        audio.play("click")
        if (t) { selectedTower = t.id; selectedSocket = sock.id; armedType = "" }
        else { selectedSocket = sock.id; selectedTower = 0; if (armedType && !sim.canPlace(sock.id, armedType).ok) armedType = "" }
        board.selectedSocket = selectedSocket; board.selectedTower = selectedTower; board.previewType = armedType
    }
    function onBoardHovered(x, z) { if (rebootMode) board.rebootCursor = { x: x, z: z } }
    function clearSelection() { selectedSocket = ""; selectedTower = 0; armedType = ""; board.selectedSocket = ""; board.selectedTower = 0; board.previewType = "" }
    function armTower(type) { armedType = type; board.previewType = type }
    function tapTowerCard(type) {
        if (!selectedSocket || selectedTower) { toast(Strings.t("placeHere")); armTower(type); return }
        if (armedType !== type) { armTower(type); audio.play("click"); return }
        buyTower(type)
    }
    function buyTower(type) {
        var r = sim.placeTower(selectedSocket, type)
        if (!r.ok) { toast(r.reason === "credits" ? Strings.t("noCredits") : r.reason === "occupied" ? Strings.t("occupied") : Strings.t("placeHere")); return }
        audio.play("place")
        board.spawnFx("boost", r.tower.x, r.tower.z, Towers.towers[type].accent)
        selectedTower = r.tower.id; armedType = ""
        board.selectedTower = selectedTower; board.previewType = ""
        board.sync(0); refresh()
    }
    function upgradeSelected() {
        var r = sim.upgradeTower(selectedTower)
        if (!r.ok) { if (r.reason === "credits") toast(Strings.t("noCredits")); return }
        audio.play("upgrade"); var t = sim.towerById(selectedTower); if (t) board.spawnFx("boost", t.x, t.z, Towers.towers[t.type].accent)
        board.sync(0); refresh()
    }
    function sellSelected() {
        var t = sim.towerById(selectedTower); if (!t) return
        var r = sim.sellTower(selectedTower)
        if (r.ok) { audio.play("sell"); board.spawnFx("poof", t.x, t.z, "#f2c02f"); clearSelection(); board.sync(0); refresh() }
    }
    function selectedTowerInfo() {
        var t = sim.towerById(selectedTower); if (!t) return null
        var def = Towers.towers[t.type], lvl = def.levels[t.level]
        var next = t.level + 1 < def.levels.length ? def.levels[t.level + 1] : null
        return { tower: t, def: def, lvl: lvl, next: next, upgradeCost: sim.upgradeCost(t), sellValue: sim.sellValue(t) }
    }

    // ---- Emergency Reboot ---------------------------------------------------------------------------
    function toggleRebootMode() {
        if (!rebootReady && !rebootMode) { toast(Strings.t("rebootCooldown") + " " + Math.ceil(rebootLeft) + " s"); return }
        rebootMode = !rebootMode
        board.rebootCursor = rebootMode ? { x: 0, z: 0 } : null
        if (rebootMode) clearSelection()
        audio.play("click")
    }
    function doReboot(x, z) {
        var r = sim.reboot(x, z)
        if (!r.ok) { toast(r.reason === "empty" ? Strings.t("rebootEmpty") : Strings.t("rebootCooldown")); return }
        rebootMode = false; board.rebootCursor = null
        audio.play("reboot")
        board.spawnFx("rebootRing", x, z, "#2f7ff2", Tuning.tuning.reboot.radius)
        refresh()
    }
    function rebootTargetsCount() { return board.rebootCursor ? sim.towersInReboot(board.rebootCursor.x, board.rebootCursor.z).length : 0 }

    // ---- events -> audio / effects / toasts ----------------------------------------------------------
    function handleEvents() {
        var ev = sim.takeEvents()
        var shots = 0, hits = 0
        for (var i = 0; i < ev.length; i++) {
            var e = ev[i]
            switch (e.type) {
            case "shot":
                if (e.kind === "beam") board.spawnBeam(e.x, e.z, e.tx, e.tz, Towers.towers[e.towerType].accent)
                if (shots++ < 2) audio.play("shot")
                break
            case "burst": board.spawnFx("burst", e.x, e.z, "#f2662f", e.radius); audio.play("burst"); break
            case "hit": if (hits++ < 1) audio.play("hit"); break
            case "death": board.spawnFx("poof", e.x, e.z, Enemies.enemies[e.enemyType].color); audio.play("death"); break
            case "escape": board.spawnFx("alarm", Map.rack.x, Map.rack.z, "#e63946", 1.6); audio.play("escape"); break
            case "reveal": board.spawnFx("reveal", e.x, e.z, "#3fe0f2", 0.7); audio.play("reveal"); break
            case "disable": board.spawnFx("alarm", e.x, e.z, "#e63946", 1.0); audio.play("alarm"); break
            case "rebootDone": board.spawnFx("rebootRing", e.x, e.z, "#3fd07a", Tuning.tuning.reboot.radius); audio.play("upgrade"); break
            case "support": break
            case "waveClear": toast(Strings.t("wave") + " " + e.wave + " ✔  +" + e.bonus); break
            case "bossSplit": board.spawnFx("burst", e.x, e.z, "#f2c02f", 1.6); audio.play("alarm"); break
            }
        }
    }
    function toast(text) { var list = toasts.slice(); list.push({ text: text, until: sim.state.time + 2.5 }); if (list.length > 3) list.shift(); toasts = list }
    function updateStatusLabels() {
        var out = []
        var S = sim.state
        for (var i = 0; i < S.towers.length; i++) {
            var t = S.towers[i]
            var until = Math.max(t.disabledUntil, t.rebootUntil)
            if (until > S.time) {
                var p = board.toScreen(t.x, 1.4, t.z)
                out.push({ x: p.x, y: p.y, text: (t.rebootUntil > S.time ? Strings.t("offline") : Strings.t("disabled")) + " " + Math.ceil(until - S.time), tone: t.rebootUntil > S.time ? "#2f7ff2" : "#e63946" })
            }
        }
        if (out.length || statusLabels.length) statusLabels = out
    }

    // ---- settings --------------------------------------------------------------------------------------
    function setLanguage(l) { Strings.lang = l; save.writeSettings({ language: l }) }
    function setVolume(v) { save.writeSettings({ volume: v }) }
    function setMuted(m) { save.writeSettings({ muted: m }) }
    function setReducedFx(r) { save.writeSettings({ reducedFx: r }) }
    readonly property bool reducedFx: save.settings.reducedFx === true

    // helpers for the HUD (plain functions so bindings re-evaluate through stateVersion)
    function board_socketHint() { var s = board.socketById(selectedSocket); return s && s.hint ? Strings.t("hint_" + s.hint) : "" }
    function saveBest() { return save.best }
    function saveBackend() { return save.backend }
    function saveSettings() { return save.settings }

    // ---- debugging helpers (dojo / clayrender) -----------------------------------------------------------
    function debugInfo() {
        var S = sim.state
        return { screen: screen, phase: S.phase, wave: S.wave, credits: S.credits, health: S.health, remaining: S.remaining,
                 enemies: sim.aliveEnemies().length, towers: S.towers.length, projectiles: S.projectiles.length, time: S.time, speed: speed }
    }
    // Skip to a mid-match state: builds a sensible defence and starts at wave `w`.
    function debugStart(w, layout) {
        startMatch(); tutorial.keys = []
        var buys = layout || { s1: "patch", s2: "firewall", s3: "firewall", s9: "traffic", s11: "scanner", s6: "backup", s5: "patch", s4: "patch" }
        sim.state.credits = 100000
        for (var s in buys) sim.placeTower(s, buys[s])
        sim.state.credits = 300
        sim.state.wave = Math.max(0, (w || 1) - 1)
        sim.startWave(); board.sync(0); refresh()
    }
    function debugSetModels(b) { board.useModels = b }
    // the exact path a mouse click / touch takes: screen position -> floor -> tap handler
    function debugClick(mx, my) { board.clickAt(mx, my); return { socket: selectedSocket, tower: selectedTower } }
    // round trip: socket -> screen -> floor; the result must land back on the socket
    function debugPickRoundTrip(sx, sz) { var p = board.toScreen(sx, 0, sz); var g = board.groundPoint(p.x, p.y); return { screen: [p.x, p.y], floor: g } }
    function debugCounts() { return { enemyVis: Object.keys(board.enemyVis).length, towerVis: Object.keys(board.towerVis).length, projVis: Object.keys(board.projVis).length,
                                      liveFx: board.fxList.filter(function (f) { return f.life > 0 }).length, beams: board.beams.length, toasts: toasts.length, labels: statusLabels.length } }
    function debugToScreen(x, y, z) { var p = board.toScreen(x, y, z); return { x: p.x, y: p.y, w: board.width, h: board.height } }
    function skipTutorial() { tutorial.keys = []; tutorial.onDoneCallback = null }
    // Plays a whole match synchronously with a simple bot (buy the layout as credits allow, upgrade the
    // cheapest upgrade, start waves). Exercises sim + events + end screen + persistence in the real runtime.
    function debugAutoplay(layout) {
        startMatch(); skipTutorial()
        var buys = layout || { s1: "patch", s2: "firewall", s3: "firewall", s9: "traffic", s11: "scanner", s6: "backup", s5: "patch", s4: "patch" }
        var order = Object.keys(buys), trace = []
        while (sim.state.phase === "build") {
            var acted = true
            while (acted) {
                acted = false
                for (var i = 0; i < order.length; i++) { var s = order[i]; if (!sim.towerAt(s) && sim.canPlace(s, buys[s]).ok) { sim.placeTower(s, buys[s]); acted = true; break } }
                if (!acted) {
                    var ups = sim.state.towers.filter(function (t) { return sim.upgradeCost(t) >= 0 && sim.upgradeCost(t) <= sim.state.credits })
                    ups.sort(function (a, b) { return sim.upgradeCost(a) - sim.upgradeCost(b) })
                    if (ups.length) { sim.upgradeTower(ups[0].id); acted = true }
                }
            }
            sim.startWave()
            var guard = 0
            while (sim.state.phase === "wave" && guard++ < 20000) { sim.step(0.05); handleEvents() }
            trace.push(sim.state.health)
        }
        board.sync(0.05); refresh()
        if (sim.state.phase === "won" || sim.state.phase === "lost") finishMatch(sim.state.phase === "won")
        var info = debugInfo(); info.healthTrace = trace; info.best = save.best
        return info
    }
    function debugAdvance(seconds) { var n = Math.round(seconds / 0.05); for (var i = 0; i < n; i++) { sim.step(0.05); handleEvents() } board.sync(0.05); refresh(); updateStatusLabels() }

    // ---- layout ---------------------------------------------------------------------------------------------
    Board3D {
        id: board
        anchors.fill: parent
        sim: game.sim
        reducedFx: game.reducedFx
        onTapped: function (x, z) { game.onBoardTapped(x, z) }
        onHovered: function (x, z) { game.onBoardHovered(x, z) }
    }
    Hud {
        id: hud
        anchors.fill: parent
        game: game
        visible: game.screen === "playing" || game.screen === "paused"
    }
    TutorialCard {
        id: tutorial
        property var onDoneCallback: null
        visible: keys.length > 0 && game.screen === "playing"
        onDone: { audio.play("click"); if (onDoneCallback) onDoneCallback() }
    }
    TitleOverlay { anchors.fill: parent; game: game; visible: game.screen === "title" }
    PauseOverlay { anchors.fill: parent; game: game; visible: game.screen === "paused" }
    EndOverlay { anchors.fill: parent; game: game; visible: game.screen === "won" || game.screen === "lost" }

    Keys.onPressed: function (event) {
        if (event.key === Qt.Key_Escape) { if (rebootMode) toggleRebootMode(); else if (selectedSocket || selectedTower) clearSelection(); else if (screen === "playing" || screen === "paused") togglePause(); event.accepted = true }
        else if (event.key === Qt.Key_Space) { if (screen === "playing" && phase === "build") requestStartWave(); event.accepted = true }
        else if (event.key === Qt.Key_P) { if (screen === "playing" || screen === "paused") togglePause(); event.accepted = true }
        else if (event.key === Qt.Key_F) { speed = speed === 1 ? 2 : 1; event.accepted = true }
        else if (event.key === Qt.Key_R) { if (screen === "playing") toggleRebootMode(); event.accepted = true }
        else if (event.key >= Qt.Key_1 && event.key <= Qt.Key_5) { if (screen === "playing") tapTowerCard(towerOrder[event.key - Qt.Key_1]); event.accepted = true }
    }
}
