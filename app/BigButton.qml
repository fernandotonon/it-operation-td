// Large, touch-friendly button. Essential info is always in the label - nothing depends on hover.
import QtQuick

Rectangle {
    id: root
    property string text: ""
    property string sub: ""
    property color tone: "#2f7ff2"
    property bool enabledLook: true
    property bool primary: false
    property bool checked: false
    signal clicked()
    implicitWidth: Math.max(96, label.implicitWidth + 36)
    implicitHeight: sub === "" ? 52 : 64
    radius: 14
    color: !enabledLook ? "#3a4150" : checked ? tone : primary ? tone : "#1f2838"
    border.color: checked || primary ? Qt.lighter(tone, 1.3) : "#4a5568"
    border.width: 2
    opacity: enabledLook ? 1 : 0.6
    scale: mouse.pressed && enabledLook ? 0.96 : 1
    Behavior on scale { NumberAnimation { duration: 80 } }
    Column {
        anchors.centerIn: parent
        spacing: 2
        Text { id: label; text: root.text; color: "white"; font.pixelSize: 19; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter }
        Text { visible: root.sub !== ""; text: root.sub; color: "#dbe4f0"; font.pixelSize: 14; anchors.horizontalCenter: parent.horizontalCenter }
    }
    MouseArea { id: mouse; anchors.fill: parent; onClicked: if (root.enabledLook) root.clicked() }
}
