// A short explanation card (tower or enemy), with a big "Got it" button. Never blocks the simulation
// on its own: TdGame pauses while a card is up.
import QtQuick

Panel {
    id: root
    property var keys: []            // teach keys; first one is shown, the rest follow on "ok"
    property int index: 0
    readonly property string key: keys.length ? keys[index] : ""
    readonly property string subject: key.indexOf("_") >= 0 ? key : ""
    signal done()
    visible: keys.length > 0
    width: Math.min(parent.width - 40, 520); height: col.implicitHeight + 40
    anchors.centerIn: parent
    readonly property var towerKeys: ["patch", "firewall", "traffic", "scanner", "backup"]
    readonly property var enemyKeys: ["bug", "spam", "trojan", "stealth", "lock", "boss"]
    Column {
        id: col
        anchors.centerIn: parent; width: parent.width - 40; spacing: 14
        Row { spacing: 14; width: parent.width
            EnemyIcon { visible: root.enemyKeys.indexOf(root.key) >= 0; etype: visible ? root.key : "bug"; anchors.verticalCenter: parent.verticalCenter }
            TowerCard { visible: root.towerKeys.indexOf(root.key) >= 0; ttype: visible ? root.key : "patch"; scale: 0.8; anchors.verticalCenter: parent.verticalCenter }
            Text { text: root.towerKeys.indexOf(root.key) >= 0 ? Strings.t("tower_" + root.key) : root.enemyKeys.indexOf(root.key) >= 0 ? Strings.t("enemy_" + root.key) : Strings.t("howto")
                   color: "white"; font.pixelSize: 24; font.bold: true; anchors.verticalCenter: parent.verticalCenter } }
        Text { width: parent.width; wrapMode: Text.WordWrap; color: "#dbe4f0"; font.pixelSize: 18; lineHeight: 1.2
               text: Strings.t("teach_" + root.key) + (root.towerKeys.indexOf(root.key) >= 0 ? "\n\n" + Strings.t("tower_" + root.key + "_desc") : root.enemyKeys.indexOf(root.key) >= 0 ? "\n\n" + Strings.t("enemy_" + root.key + "_desc") : "") }
        Row { spacing: 10; anchors.right: parent.right
            Text { text: (root.index + 1) + " / " + root.keys.length; color: "#8fa3c0"; font.pixelSize: 15; anchors.verticalCenter: parent.verticalCenter; visible: root.keys.length > 1 }
            BigButton { text: Strings.t("ok"); primary: true; onClicked: { if (root.index + 1 < root.keys.length) root.index += 1; else { root.index = 0; root.done() } } } }
    }
}
