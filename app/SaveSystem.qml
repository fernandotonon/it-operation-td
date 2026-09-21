// Persistent settings and best results: one JSON blob each.
// Backend: Clayground's KeyValueStore (SQLite) on desktop and in the dojo; the app's C++ SaveStore
// (browser localStorage) on WebAssembly, loaded through AppBridges.qml.
import QtQuick
import Clayground.Storage

Item {
    id: save
    property var settings: ({ language: "en", volume: 0.8, muted: false, reducedFx: false, tutorialSeen: [] })
    property var best: ({ bestWave: 0, wins: 0, fastestWin: 0, matches: 0 })
    readonly property string settingsKey: "settings.v1"
    readonly property string bestKey: "best.v1"
    property var store: null
    readonly property string backend: store && store.backend !== undefined ? store.backend : "KeyValueStore"

    KeyValueStore { id: kv; name: "OperacaoTI" }
    // WebAssembly: SQLite would live in the page's memory only, so the app's SaveStore (browser localStorage)
    // takes over there; everywhere else the KeyValueStore persists fine.
    Loader { id: bridges; active: Qt.platform.os === "wasm"; source: "AppBridges.qml" }
    Component.onCompleted: store = bridges.status === Loader.Ready && bridges.item ? bridges.item.store : kv

    function load() {
        if (!store) return
        try { var s = store.get(settingsKey, ""); if (s) settings = Object.assign({}, settings, JSON.parse(s)) } catch (e) { console.warn("SaveSystem: bad settings", e) }
        try { var b = store.get(bestKey, ""); if (b) best = Object.assign({}, best, JSON.parse(b)) } catch (e) { console.warn("SaveSystem: bad best results", e) }
    }
    function writeSettings(patch) { settings = Object.assign({}, settings, patch); store.set(settingsKey, JSON.stringify(settings)) }
    function markTutorialSeen(key) {
        if (settings.tutorialSeen.indexOf(key) >= 0) return
        var seen = settings.tutorialSeen.slice(); seen.push(key); writeSettings({ tutorialSeen: seen })
    }
    function tutorialSeen(key) { return settings.tutorialSeen.indexOf(key) >= 0 }
    // returns true when a new record was set
    function recordMatch(won, waveReached, seconds) {
        var b = Object.assign({}, best)
        var record = false
        b.matches += 1
        if (waveReached > b.bestWave) { b.bestWave = waveReached; record = true }
        if (won) {
            b.wins += 1
            if (!b.fastestWin || seconds < b.fastestWin) { b.fastestWin = Math.round(seconds); record = true }
        }
        best = b; store.set(bestKey, JSON.stringify(b))
        return record
    }
    function clearAll() { store.remove(settingsKey); store.remove(bestKey) }
}
