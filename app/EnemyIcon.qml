// 2D icon of a threat type for the wave preview and the tutorial cards (shape + colour, never colour alone).
import QtQuick

Item {
    id: root
    property string etype: "bug"
    property int count: 0
    width: 56; height: 64
    readonly property var tones: ({ bug: "#f28a2f", spam: "#f2d02f", trojan: "#8a4fd6", stealth: "#3fe0f2", lock: "#e63946", boss: "#d8d8d8" })
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        width: etype === "boss" ? 44 : 36; height: etype === "spam" ? 26 : etype === "lock" ? 30 : 36
        radius: etype === "bug" ? 12 : etype === "stealth" ? 4 : 6
        rotation: etype === "stealth" ? 45 : 0
        color: tones[etype] || "#f28a2f"
        border.color: "#20242c"; border.width: 2
        opacity: etype === "stealth" ? 0.6 : 1
        y: etype === "lock" ? 14 : 4
        Row { anchors.centerIn: parent; spacing: 6
            Rectangle { width: 7; height: 8; radius: 3; color: "white"; Rectangle { width: 3; height: 4; radius: 1; color: "#1a1a1a"; anchors.centerIn: parent } }
            Rectangle { width: 7; height: 8; radius: 3; color: "white"; Rectangle { width: 3; height: 4; radius: 1; color: "#1a1a1a"; anchors.centerIn: parent } } }
    }
    Rectangle { visible: etype === "lock"; anchors.horizontalCenter: parent.horizontalCenter; y: 2; width: 22; height: 16; radius: 8; color: "transparent"; border.color: "#4a4f5a"; border.width: 4 }
    Rectangle { visible: etype === "boss"; anchors.horizontalCenter: parent.horizontalCenter; y: 34; width: 40; height: 6; color: "#f2c02f"; border.color: "#1c1c1c"; border.width: 1 }
    Text { visible: root.count > 0; anchors.bottom: parent.bottom; anchors.horizontalCenter: parent.horizontalCenter; text: "×" + root.count; color: "white"; font.pixelSize: 16; font.bold: true }
}
