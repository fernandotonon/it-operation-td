// Language, master volume, mute, reduced effects. Values persist through SaveSystem.
import QtQuick

Panel {
    id: root
    property var game: null
    signal closed()
    anchors.centerIn: parent; width: Math.min(parent.width - 40, 440); height: col.implicitHeight + 40
    Column { id: col; anchors.centerIn: parent; spacing: 14; width: parent.width - 40
        Text { text: Strings.t("settings"); color: "white"; font.pixelSize: 26; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter }
        Text { text: Strings.t("language"); color: "#8fa3c0"; font.pixelSize: 14 }
        Row { spacing: 8
            Repeater { model: Strings.languages
                BigButton { text: Strings.langName(modelData); checked: Strings.lang === modelData; onClicked: game.setLanguage(modelData) } } }
        Text { text: Strings.t("volume") + "  " + Math.round((game ? game.saveSettings().volume : 0.8) * 100) + "%"; color: "#8fa3c0"; font.pixelSize: 14 }
        Rectangle { width: parent.width; height: 44; radius: 12; color: "#1f2838"; border.color: "#4a5568"
            Rectangle { width: parent.width * (game ? game.saveSettings().volume : 0.8); height: parent.height; radius: 12; color: "#2f7ff2" }
            MouseArea { anchors.fill: parent; onPressed: function (m) { game.setVolume(Math.max(0, Math.min(1, m.x / width))) } onPositionChanged: function (m) { if (pressed) game.setVolume(Math.max(0, Math.min(1, m.x / width))) } } }
        Row { spacing: 8
            BigButton { text: Strings.t("mute"); sub: game && game.saveSettings().muted ? Strings.t("on") : Strings.t("off"); checked: game && game.saveSettings().muted; onClicked: game.setMuted(!game.saveSettings().muted) }
            BigButton { text: Strings.t("reducedFx"); sub: game && game.saveSettings().reducedFx ? Strings.t("on") : Strings.t("off"); checked: game && game.saveSettings().reducedFx; onClicked: game.setReducedFx(!game.saveSettings().reducedFx) } }
        BigButton { text: Strings.t("back"); primary: true; width: parent.width; onClicked: root.closed() }
    }
}
