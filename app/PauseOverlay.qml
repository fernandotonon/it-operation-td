// Pause menu: resume, restart, settings, quit to title.
import QtQuick

Rectangle {
    id: root
    property var game: null
    property bool showSettings: false
    color: "#aa0f1a2e"
    MouseArea { anchors.fill: parent }
    Panel {
        anchors.centerIn: parent; width: 360; height: col.implicitHeight + 40
        visible: !root.showSettings
        Column { id: col; anchors.centerIn: parent; spacing: 12; width: parent.width - 40
            Text { text: Strings.t("paused"); color: "white"; font.pixelSize: 28; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter }
            BigButton { text: Strings.t("resume"); primary: true; tone: "#3fd07a"; width: parent.width; onClicked: game.togglePause() }
            BigButton { text: Strings.t("restart"); width: parent.width; onClicked: game.startMatch() }
            BigButton { text: Strings.t("settings"); width: parent.width; onClicked: root.showSettings = true }
            BigButton { text: Strings.t("stages"); width: parent.width; onClicked: game.openStages() }
            BigButton { text: Strings.t("quit"); tone: "#f2662f"; width: parent.width; onClicked: game.backToTitle() }
        }
    }
    SettingsPanel { visible: root.showSettings; game: root.game; onClosed: root.showSettings = false }
}
