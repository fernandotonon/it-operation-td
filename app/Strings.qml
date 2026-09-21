// Localization singleton: Strings.t("key") in the current language (en default; pt_BR and de available).
pragma Singleton
import QtQuick
import "config/strings.js" as S

QtObject {
    id: strings
    property string lang: "en"
    readonly property var languages: S.languages
    function t(key) {
        var tbl = S.table[lang] || S.table.en
        if (tbl[key] !== undefined) return tbl[key]
        if (S.table.en[key] !== undefined) return S.table.en[key]
        return key
    }
    function langName(l) { return l === "pt_BR" ? "Português (BR)" : l === "de" ? "Deutsch" : "English" }
}
