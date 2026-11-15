// Large, touch-friendly button. Essential info is always in the label - nothing depends on hover.
// When the parent assigns an explicit width, long translations wrap inside instead of overflowing.
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
    // Fixed default; parents set width or override implicitWidth. Avoids wrap↔width polish loops.
    implicitWidth: 140
    implicitHeight: Math.max(sub === "" ? 52 : 70, col.implicitHeight + 24)
    radius: 9
    color: !enabledLook ? "#3a4150" : checked ? tone : primary ? tone : "#20364b"
    border.color: checked || primary ? Qt.lighter(tone, 1.3) : "#4a5568"
    border.width: 1
    opacity: enabledLook ? 1 : 0.6
    scale: mouse.pressed && enabledLook ? 0.96 : 1
    clip: true
    Behavior on scale { NumberAnimation { duration: 80 } }

    Column {
        id: col
        anchors.centerIn: parent
        width: Math.max(8, root.width - 24)
        spacing: 2
        Text {
            width: parent.width
            text: root.text
            color: "white"
            font.pixelSize: root.width > 0 && root.width < 170 ? 15 : 17
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            maximumLineCount: 3
            elide: Text.ElideRight
        }
        Text {
            visible: root.sub !== ""
            width: parent.width
            text: root.sub
            color: "#dbe4f0"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            maximumLineCount: 2
            elide: Text.ElideRight
        }
    }
    MouseArea { id: mouse; anchors.fill: parent; onClicked: if (root.enabledLook) root.clicked() }
}
