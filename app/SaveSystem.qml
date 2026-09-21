// Persistent settings and best results: one JSON blob each.
// Backend: Clayground's KeyValueStore (SQLite) on desktop and in the dojo; the app's C++ SaveStore
// (browser localStorage) on WebAssembly, loaded through AppBridges.qml.
import QtQuick

Item {
    id: save
    // browsers start with reduced effects (no shadows / MSAA); the settings panel turns them back on
    property var settings: ({ language: "en", volume: 0.8, muted: false, reducedFx: Qt.platform.os === "wasm", tutorialSeen: [] })
    property var best: ({ bestWave: 0, wins: 0, fastestWin: 0, matches: 0 })
    // stage progress: unlocked = number of playable stages; stages[id] = { wins, bestHealth, fastest }
    property var progress: ({ unlocked: 1, stages: {} })
    readonly property string settingsKey: "settings.v1"
    readonly property string bestKey: "best.v1"
    readonly property string progressKey: "progress.v1"
    property var store: null
    readonly property string backend: store && store.backend !== undefined ? store.backend : "KeyValueStore"

    // WebAssembly: the app's SaveStore (browser localStorage) - QtQuick.LocalStorage does not exist in the wasm
    // kit, so the KeyValueStore is created dynamically and only elsewhere. Everything else persists via SQLite.
    Loader { id: bridges; active: Qt.platform.os === "wasm" && Qt.application.arguments.indexOf("--no-bridges") < 0; source: "AppBridges.qml" }
    // Component.onCompleted order between parent and children is not guaranteed (it differed on WebAssembly),
    // so the backend is resolved on first use and load() is idempotent.
    function ensureStore() {
        if (store) return store
        if (bridges.status === Loader.Ready && bridges.item) store = bridges.item.store
        else {
            try { store = Qt.createQmlObject('import Clayground.Storage; KeyValueStore { name: "OperacaoTI" }', save, "KeyValueStore") }
            catch (e) { console.warn("SaveSystem: no storage backend, settings will not persist", e); store = memoryStore }
        }
        return store
    }
    property bool loaded: false
    Component.onCompleted: load()
    // last resort: in-memory
    property var memoryStore: ({ data: {}, backend: "memory", get: function (k, d) { return k in this.data ? this.data[k] : d }, set: function (k, v) { this.data[k] = v; return true }, remove: function (k) { delete this.data[k] } })

    function load() {
        ensureStore()
        if (loaded) return
        loaded = true
        try { var s = store.get(settingsKey, ""); if (s) settings = Object.assign({}, settings, JSON.parse(s)) } catch (e) { console.warn("SaveSystem: bad settings", e) }
        try { var b = store.get(bestKey, ""); if (b) best = Object.assign({}, best, JSON.parse(b)) } catch (e) { console.warn("SaveSystem: bad best results", e) }
        try { var pr = store.get(progressKey, ""); if (pr) progress = Object.assign({ unlocked: 1, stages: {} }, JSON.parse(pr)) } catch (e) { console.warn("SaveSystem: bad progress", e) }
    }
    function writeSettings(patch) { settings = Object.assign({}, settings, patch); ensureStore().set(settingsKey, JSON.stringify(settings)) }
    function markTutorialSeen(key) {
        if (settings.tutorialSeen.indexOf(key) >= 0) return
        var seen = settings.tutorialSeen.slice(); seen.push(key); writeSettings({ tutorialSeen: seen })
    }
    function tutorialSeen(key) { return settings.tutorialSeen.indexOf(key) >= 0 }
    // returns true when a new record was set (global or for the stage)
    function recordMatch(stageId, won, waveReached, seconds, health, stageCount) {
        var b = Object.assign({}, best)
        var record = false
        b.matches += 1
        if (waveReached > b.bestWave) { b.bestWave = waveReached; record = true }
        if (won) {
            b.wins += 1
            if (!b.fastestWin || seconds < b.fastestWin) { b.fastestWin = Math.round(seconds); record = true }
        }
        best = b; ensureStore().set(bestKey, JSON.stringify(b))
        var pr = { unlocked: progress.unlocked, stages: Object.assign({}, progress.stages) }
        var st = Object.assign({ wins: 0, bestHealth: 0, fastest: 0 }, pr.stages[String(stageId)] || {})
        if (won) {
            st.wins += 1
            if (health > st.bestHealth) { st.bestHealth = health; record = true }
            if (!st.fastest || seconds < st.fastest) { st.fastest = Math.round(seconds); record = true }
            pr.unlocked = Math.max(pr.unlocked, Math.min(stageCount, stageId + 1))
        }
        pr.stages[String(stageId)] = st
        progress = pr; ensureStore().set(progressKey, JSON.stringify(pr))
        return record
    }
    function clearAll() { ensureStore().remove(settingsKey); store.remove(bestKey); store.remove(progressKey) }
}
