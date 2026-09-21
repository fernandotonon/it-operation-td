// A tower type in the build bar: silhouette icon + name + cost. Two taps (or hover + tap) to buy,
// the first tap arms it and previews the range at the selected socket.
import QtQuick
import "config/towers.js" as Towers

Rectangle {
    id: root
    property string ttype: "patch"
    property bool affordable: true
    property bool armed: false
    property int cost: Towers.towers[ttype].cost
    property string name: Strings.t("tower_" + ttype)
    readonly property color accent: Towers.towers[ttype].accent
    readonly property string role: Towers.towers[ttype].role
    signal tapped()
    signal hovered()
    width: 126; height: 92
    radius: 14
    color: armed ? Qt.darker(accent, 1.6) : "#1f2838"
    border.color: armed ? accent : affordable ? "#4a5568" : "#6b2d2d"
    border.width: 2
    opacity: affordable ? 1 : 0.65
    // silhouette per role
    Item {
        width: 44; height: 34; anchors.horizontalCenter: parent.horizontalCenter; y: 8
        Rectangle { visible: root.role === "single"; width: 30; height: 20; radius: 3; color: root.accent; anchors.centerIn: parent; Rectangle { width: 24; height: 14; color: "#dbe9ff"; anchors.centerIn: parent } }
        Rectangle { visible: root.role === "splash"; width: 34; height: 24; radius: 6; color: root.accent; anchors.centerIn: parent; Rectangle { width: 12; height: 16; radius: 5; color: "white"; anchors.centerIn: parent } }
        Rectangle { visible: root.role === "slow"; width: 40; height: 16; radius: 3; color: "#2b3140"; anchors.centerIn: parent; border.color: root.accent; border.width: 2
                    Row { anchors.centerIn: parent; spacing: 3; Repeater { model: 5; Rectangle { width: 5; height: 6; color: root.accent } } } }
        Rectangle { visible: root.role === "scan"; width: 34; height: 26; radius: 3; color: "#2b2f3a"; anchors.centerIn: parent; border.color: root.accent; border.width: 2
                    Rectangle { width: 10; height: 10; radius: 5; color: root.accent; anchors.centerIn: parent } }
        Rectangle { visible: root.role === "support"; width: 22; height: 32; radius: 4; color: "#23262e"; anchors.centerIn: parent; border.color: root.accent; border.width: 2
                    Rectangle { width: 10; height: 14; radius: 2; color: root.accent; anchors.centerIn: parent } }
    }
    Text { text: root.name; color: "white"; font.pixelSize: 12; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter; y: 46; width: parent.width - 6; horizontalAlignment: Text.AlignHCenter; elide: Text.ElideRight }
    Row { anchors.horizontalCenter: parent.horizontalCenter; y: 66; spacing: 4
        Rectangle { width: 14; height: 14; radius: 7; color: "#f2c02f"; border.color: "#7a5a10"; anchors.verticalCenter: parent.verticalCenter }
        Text { text: root.cost; color: root.affordable ? "#ffe9a8" : "#ff9a9a"; font.pixelSize: 15; font.bold: true } }
    MouseArea { anchors.fill: parent; hoverEnabled: true; onClicked: root.tapped(); onEntered: root.hovered() }
}
