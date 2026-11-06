// Localization singleton. Strings.t("key") follows the in-game choice, then the QtMesh Games
// launcher (QTMESH_LANG / --lang=), then the OS language, then English.
pragma Singleton
import QtQuick
import "config/strings.js" as S

QtObject {
    id: strings
    property string lang: "en"
    // "" is Auto. A code is an explicit pick.
    property string choice: ""
    property string launcherRaw: ""
    property string osRaw: ""
    readonly property var languages: S.languages
    readonly property string autoLabel: "Auto · " + langName(S.resolve("", launcherRaw, osRaw))

    function t(key) {
        var tbl = S.table[lang] || S.table.en
        if (tbl[key] !== undefined) return tbl[key]
        if (S.table.en[key] !== undefined) return S.table.en[key]
        return key
    }
    function langName(l) { return S.names[l] || l }
    function matchCode(raw) { return S.matchCode(raw) }
    function storedChoice(settings) { return S.storedChoice(settings) }
    function apply(user, launcher, osName) {
        launcherRaw = launcher || ""
        osRaw = osName || ""
        choice = S.matchCode(user)
        lang = S.resolve(user, launcher, osName)
    }
}
