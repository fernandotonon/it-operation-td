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
        border.color: root.won ? "#3fd07a" : "#e63946"; clip: true
        Column { id: col; anchors.centerIn: parent; spacing: root.height < 600 ? 6 : 12; width: parent.width - 40
            Text { text: root.won ? Strings.t("victory") : Strings.t("defeat"); color: root.won ? "#3fd07a" : "#ff8a8a"; font.pixelSize: 30; font.bold: true
                   width: parent.width; wrapMode: Text.WordWrap; horizontalAlignment: Text.AlignHCenter; anchors.horizontalCenter: parent.horizontalCenter }
            Text { visible: root.won; text: game ? "★".repeat(game.medals(game.health)) + "☆".repeat(3 - game.medals(game.health)) : ""; color: "#f4cf7b"; font.pixelSize: root.height < 600 ? 28 : 44; anchors.horizontalCenter: parent.horizontalCenter }
            Text { visible: root.won && root.height >= 600; text: Strings.t("medalGoal"); color: "#8fa3c0"; font.pixelSize: 13
                   width: parent.width; wrapMode: Text.WordWrap; horizontalAlignment: Text.AlignHCenter; anchors.horizontalCenter: parent.horizontalCenter }
            Text { visible: root.height >= 500; text: root.won ? Strings.t("victoryText") : Strings.t("defeatText"); color: "#dbe4f0"; font.pixelSize: 16; width: parent.width; wrapMode: Text.WordWrap; horizontalAlignment: Text.AlignHCenter }
            Text { readonly property var s: game ? (game.stateVersion, game.sim.state.stats) : null
                   text: s ? Strings.t("stage") + " " + (game.stageIndex + 1) + "  ·  " + Strings.t("wave") + " " + game.wave + " / " + game.waveCount + "\n" + Strings.t("defeated") + ": " + s.defeated + "  ·  " + Strings.t("escaped") + ": " + s.escaped + "  ·  " + Strings.t("time") + " " + Math.floor(game.simTime / 60) + ":" + ("0" + Math.floor(game.simTime % 60)).slice(-2) : ""
                   color: "white"; font.pixelSize: 14; width: parent.width; wrapMode: Text.WordWrap; horizontalAlignment: Text.AlignHCenter; anchors.horizontalCenter: parent.horizontalCenter }
            Text { visible: game && game.newRecord; text: "★ " + Strings.t("newBest"); color: "#ffe9a8"; font.pixelSize: 18; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter }
            BigButton { visible: root.won && game.hasNextStage; text: Strings.t("nextStage"); primary: true; tone: "#3fd07a"; width: parent.width; implicitHeight: root.height < 600 ? 48 : 60; onClicked: game.nextStage() }
            BigButton { text: Strings.t("restart"); primary: !(root.won && game.hasNextStage); tone: "#3fd07a"; width: parent.width; implicitHeight: root.height < 600 ? 48 : 52; onClicked: game.startMatch() }
            BigButton { text: Strings.t("stages"); width: parent.width; implicitHeight: root.height < 600 ? 48 : 52; onClicked: game.openStages() }
        }
    }
}
