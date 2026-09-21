// Stage selection: one card per stage with waves, difficulty, best result and a lock until the previous
// stage is won. Big cards for touch; wraps into rows on narrow screens.
import QtQuick
import "config/stages.js" as St

Rectangle {
    id: root
    property var game: null
    color: "#cc0f1a2e"
    readonly property int v: game ? game.stateVersion : 0
    readonly property bool compact: width < 900 || height < 560
    MouseArea { anchors.fill: parent }
    Column {
        anchors.centerIn: parent; spacing: root.compact ? 8 : 16; width: Math.min(parent.width - 24, 1100)
        Text { text: Strings.t("stages"); color: "white"; font.pixelSize: root.compact ? 24 : 34; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter }
        Flow {
            id: flow
            width: parent.width; spacing: root.compact ? 8 : 12
            Repeater {
                model: St.stages.length
                Rectangle {
                    id: card
                    required property int index
                    readonly property var st: St.stages[index]
                    readonly property bool unlocked: root.v, game && game.stageUnlocked(index)
                    readonly property var best: root.v, game ? game.stageBest(index) : null
                    width: root.compact ? (flow.width - flow.spacing * 3) / 4 : (flow.width - flow.spacing * 3) / 4
                    height: root.compact ? 78 : 118
                    radius: 14
                    color: unlocked ? "#1f2838" : "#141a25"
                    border.color: unlocked ? (best && best.wins ? "#3fd07a" : "#4a5568") : "#2a3140"
                    border.width: 2
                    opacity: unlocked ? 1 : 0.55
                    Column {
                        anchors.fill: parent; anchors.margins: root.compact ? 6 : 10; spacing: 2
                        Row { spacing: 8; width: parent.width
                            Text { text: card.index + 1; color: "#5ab3f0"; font.pixelSize: root.compact ? 18 : 26; font.bold: true }
                            Text { text: Strings.t("stage_" + card.st.id); color: "white"; font.pixelSize: root.compact ? 13 : 16; font.bold: true
                                   width: parent.width - 60; elide: Text.ElideRight; anchors.verticalCenter: parent.verticalCenter }
                            Text { visible: !card.unlocked; text: "🔒"; font.pixelSize: root.compact ? 14 : 18; anchors.verticalCenter: parent.verticalCenter } }
                        Text { text: card.st.waves + " " + Strings.t("wavesShort") + "  ·  " + "★".repeat(St.difficulty(card.st)) + "☆".repeat(5 - St.difficulty(card.st))
                               color: "#8fa3c0"; font.pixelSize: root.compact ? 11 : 13 }
                        Text { visible: !root.compact || card.best; text: card.best && card.best.wins ? Strings.t("bestHealth") + " " + card.best.bestHealth + " ♥  ·  " + Math.floor(card.best.fastest / 60) + ":" + ("0" + (card.best.fastest % 60)).slice(-2)
                                                       : card.unlocked ? Strings.t("notPlayed") : Strings.t("locked")
                               color: card.best && card.best.wins ? "#3fd07a" : "#5a6b85"; font.pixelSize: root.compact ? 11 : 13; width: parent.width; elide: Text.ElideRight }
                    }
                    MouseArea { anchors.fill: parent; onClicked: if (card.unlocked) game.startMatch(card.index) }
                }
            }
        }
        BigButton { text: Strings.t("back"); width: 200; anchors.horizontalCenter: parent.horizontalCenter; onClicked: game.backToTitle() }
    }
}
