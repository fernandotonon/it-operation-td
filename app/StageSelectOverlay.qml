// Stage selection: one card per stage with waves, difficulty, best result and a lock until the previous
// stage is won. Big cards for touch; wraps into rows on narrow screens. Card height and text wrapping
// keep long translations (pt_BR, de, ru, …) inside the card.
import QtQuick
import "config/stages.js" as St

Rectangle {
    id: root
    property var game: null
    color: "#cc0f1a2e"
    readonly property int v: game ? game.stateVersion : 0
    readonly property string lang: Strings.lang
    readonly property bool compact: width < 900 || height < 560
    readonly property int columns: width < 720 ? 2 : width < 1100 ? 3 : 4
    MouseArea { anchors.fill: parent }
    Column {
        anchors.centerIn: parent; spacing: root.compact ? 8 : 16; width: Math.min(parent.width - 24, 1100)
        Text {
            text: root.lang, Strings.t("stages")
            color: "white"; font.pixelSize: root.compact ? 24 : 34; font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
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
                    width: (flow.width - flow.spacing * (root.columns - 1)) / root.columns
                    height: cardCol.implicitHeight + (root.compact ? 14 : 20)
                    radius: 14
                    color: unlocked ? "#1f2838" : "#141a25"
                    border.color: unlocked ? (best && best.wins ? "#3fd07a" : "#4a5568") : "#2a3140"
                    border.width: 2
                    opacity: unlocked ? 1 : 0.55
                    clip: true
                    Canvas {
                        anchors.right: parent.right; anchors.bottom: parent.bottom; anchors.margins: 6
                        width: parent.width * 0.38; height: 56; opacity: 0.14
                        z: 0
                        onPaint: {
                            var ctx = getContext("2d"), path = card.st.path
                            ctx.clearRect(0, 0, width, height); ctx.strokeStyle = "#87d9f2"; ctx.lineWidth = 3; ctx.beginPath()
                            path.forEach(function (p, i) { var x = (p.x + 11) / 22 * width, y = (p.z + 6.5) / 13 * height; if (i === 0) ctx.moveTo(x, y); else ctx.lineTo(x, y) })
                            ctx.stroke()
                        }
                    }
                    Column {
                        id: cardCol
                        anchors.left: parent.left; anchors.right: parent.right; anchors.top: parent.top
                        anchors.margins: root.compact ? 8 : 12
                        spacing: root.compact ? 3 : 5
                        z: 1
                        Row {
                            spacing: 6; width: parent.width
                            Text { text: card.index + 1; color: "#5ab3f0"; font.pixelSize: root.compact ? 16 : 24; font.bold: true }
                            Text {
                                text: root.lang, Strings.t("stage_" + card.st.id)
                                color: "white"; font.pixelSize: root.compact ? 12 : 15; font.bold: true
                                width: parent.width - (card.unlocked ? 28 : 48); wrapMode: Text.WordWrap; maximumLineCount: 2; elide: Text.ElideRight
                                anchors.verticalCenter: parent.verticalCenter
                            }
                            Text { visible: !card.unlocked; text: "🔒"; font.pixelSize: root.compact ? 14 : 18; anchors.verticalCenter: parent.verticalCenter }
                        }
                        Text {
                            text: card.best && card.best.wins
                                  ? "★".repeat(game.medals(card.best.bestHealth)) + "☆".repeat(3 - game.medals(card.best.bestHealth))
                                  : "☆ ☆ ☆"
                            color: "#f4cf7b"; font.pixelSize: root.compact ? 12 : 17
                        }
                        Text {
                            text: card.st.waves + " " + (root.lang, Strings.t("wavesShort")) + "  ·  "
                                  + "★".repeat(St.difficulty(card.st)) + "☆".repeat(5 - St.difficulty(card.st))
                            color: "#8fa3c0"; font.pixelSize: root.compact ? 11 : 13
                            width: parent.width; wrapMode: Text.WordWrap; maximumLineCount: 2; elide: Text.ElideRight
                        }
                        Text {
                            text: card.best && card.best.wins
                                  ? (root.lang, Strings.t("bestHealth")) + " " + card.best.bestHealth + " ♥  ·  "
                                    + Math.floor(card.best.fastest / 60) + ":" + ("0" + (card.best.fastest % 60)).slice(-2)
                                  : card.unlocked ? (root.lang, Strings.t("notPlayed")) : (root.lang, Strings.t("locked"))
                            color: card.best && card.best.wins ? "#3fd07a" : "#5a6b85"
                            font.pixelSize: root.compact ? 11 : 12
                            width: parent.width; wrapMode: Text.WordWrap; maximumLineCount: 2; elide: Text.ElideRight
                        }
                    }
                    MouseArea { anchors.fill: parent; onClicked: if (card.unlocked) game.startMatch(card.index) }
                }
            }
        }
        BigButton { text: root.lang, Strings.t("back"); width: 200; anchors.horizontalCenter: parent.horizontalCenter; onClicked: game.backToTitle() }
    }
}
