// Title screen: premise, Play, How to play, Settings, best results.
import QtQuick

Rectangle {
    id: root
    property var game: null
    color: "#cc0f1a2e"
    property bool showHelp: false
    property bool showSettings: false
    MouseArea { anchors.fill: parent }   // swallow clicks
    Column {
        anchors.centerIn: parent; spacing: 16; width: Math.min(parent.width - 40, 620)
        visible: !root.showHelp && !root.showSettings
        Text { text: Strings.t("title"); color: "#5ab3f0"; font.pixelSize: 56; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter }
        Text { text: Strings.t("subtitle"); color: "white"; font.pixelSize: 30; anchors.horizontalCenter: parent.horizontalCenter }
        Text { text: Strings.t("premise"); color: "#dbe4f0"; font.pixelSize: 18; width: parent.width; wrapMode: Text.WordWrap; horizontalAlignment: Text.AlignHCenter; lineHeight: 1.25 }
        BigButton { text: Strings.t("play"); primary: true; tone: "#3fd07a"; width: 260; implicitHeight: 64; anchors.horizontalCenter: parent.horizontalCenter; onClicked: game.startMatch() }
        Row { spacing: 12; anchors.horizontalCenter: parent.horizontalCenter
            BigButton { text: Strings.t("howto"); width: 180; onClicked: root.showHelp = true }
            BigButton { text: Strings.t("settings"); width: 180; onClicked: root.showSettings = true } }
        Panel { width: parent.width; height: bestCol.implicitHeight + 24; anchors.horizontalCenter: parent.horizontalCenter
            Column { id: bestCol; anchors.centerIn: parent; spacing: 4
                Text { text: Strings.t("best"); color: "#8fa3c0"; font.pixelSize: 14; anchors.horizontalCenter: parent.horizontalCenter }
                Text { readonly property var b: game ? game.saveBest() : null
                       text: b ? Strings.t("bestWave") + ": " + (b.bestWave || Strings.t("none")) + "    " + Strings.t("wins") + ": " + b.wins + "    " + Strings.t("fastest") + ": " + (b.fastestWin ? Math.floor(b.fastestWin / 60) + ":" + ("0" + (b.fastestWin % 60)).slice(-2) : Strings.t("none")) : ""
                       color: "white"; font.pixelSize: 17; anchors.horizontalCenter: parent.horizontalCenter } } }
        Text { text: "Clayground · QtMeshEditor"; color: "#5a6b85"; font.pixelSize: 13; anchors.horizontalCenter: parent.horizontalCenter }
    }
    TutorialCard { visible: root.showHelp; keys: root.showHelp ? ["place", "patch", "upgrade", "firewall", "traffic", "scanner", "backup", "reboot"] : []; onDone: root.showHelp = false }
    SettingsPanel { visible: root.showSettings; game: root.game; onClosed: root.showSettings = false }
}
