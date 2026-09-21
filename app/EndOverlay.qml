// Victory / defeat card with the match result, restart and title buttons.
import QtQuick

Rectangle {
    id: root
    property var game: null
    readonly property bool won: game && game.screen === "won"
    color: "#aa0f1a2e"
    MouseArea { anchors.fill: parent }
    Panel {
        anchors.centerIn: parent; width: Math.min(parent.width - 40, 520); height: col.implicitHeight + 40
        border.color: root.won ? "#3fd07a" : "#e63946"
        Column { id: col; anchors.centerIn: parent; spacing: 12; width: parent.width - 40
            Text { text: root.won ? Strings.t("victory") : Strings.t("defeat"); color: root.won ? "#3fd07a" : "#ff8a8a"; font.pixelSize: 34; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter }
            Text { text: root.won ? Strings.t("victoryText") : Strings.t("defeatText"); color: "#dbe4f0"; font.pixelSize: 17; width: parent.width; wrapMode: Text.WordWrap; horizontalAlignment: Text.AlignHCenter }
            Text { readonly property var s: game ? (game.stateVersion, game.sim.state.stats) : null
                   text: s ? Strings.t("wave") + " " + game.wave + " / " + game.waveCount + "    " + Strings.t("defeated") + ": " + s.defeated + "    " + Strings.t("escaped") + ": " + s.escaped + "    " + Strings.t("time") + " " + Math.floor(game.simTime / 60) + ":" + ("0" + Math.floor(game.simTime % 60)).slice(-2) : ""
                   color: "white"; font.pixelSize: 15; anchors.horizontalCenter: parent.horizontalCenter }
            Text { visible: game && game.newRecord; text: "★ " + Strings.t("newBest"); color: "#ffe9a8"; font.pixelSize: 18; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter }
            BigButton { text: Strings.t("restart"); primary: true; tone: "#3fd07a"; width: parent.width; implicitHeight: 60; onClicked: game.startMatch() }
            BigButton { text: Strings.t("back"); width: parent.width; onClicked: game.backToTitle() }
        }
    }
}
