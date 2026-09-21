// Localization singleton: Strings.t("key") in the current language (pt_BR default, en available).
pragma Singleton
import QtQuick
import "config/strings.js" as S

QtObject {
    id: strings
    property string lang: "pt_BR"
    readonly property var languages: S.languages
    function t(key) {
        var tbl = S.table[lang] || S.table.pt_BR
        if (tbl[key] !== undefined) return tbl[key]
        if (S.table.pt_BR[key] !== undefined) return S.table.pt_BR[key]
        return key
    }
    function langName(l) { return l === "pt_BR" ? "Português (BR)" : "English" }
}
