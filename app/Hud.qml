// In-match interface: top bar (credits, health, wave, threats, speed, pause), build bar / tower panel,
// wave card with preview, Emergency Reboot button, toasts and tower status labels. Big hit areas; nothing
// essential depends on hovering.
import QtQuick
import "config/towers.js" as Towers

Item {
    id: hud
    property var game: null
    readonly property int v: game ? game.stateVersion : 0
    readonly property bool playing: game && game.screen === "playing"

    // ---- top bar --------------------------------------------------------------------------------
    Panel {
        id: topBar
        x: 12; y: 12; height: 64
        width: Math.min(parent.width - 24, topRow.implicitWidth + 32)
        Row {
            id: topRow
            anchors.verticalCenter: parent.verticalCenter; x: 16; spacing: 22
            Row { spacing: 8; anchors.verticalCenter: parent.verticalCenter
                Image { source: Qt.resolvedUrl("../assets/source-images/coin.png"); width: 34; height: 34; fillMode: Image.PreserveAspectFit; anchors.verticalCenter: parent.verticalCenter; mipmap: true }
                Text { text: hud.v, game ? game.credits : 0; color: "#ffe9a8"; font.pixelSize: 26; font.bold: true; anchors.verticalCenter: parent.verticalCenter } }
            Row { spacing: 8; anchors.verticalCenter: parent.verticalCenter
                Image { source: Qt.resolvedUrl("../assets/source-images/heart.png"); width: 34; height: 34; fillMode: Image.PreserveAspectFit; anchors.verticalCenter: parent.verticalCenter; mipmap: true }
                Text { text: hud.v, game ? game.health : 0; color: game && game.health <= 5 ? "#ff8a8a" : "white"; font.pixelSize: 26; font.bold: true; anchors.verticalCenter: parent.verticalCenter }
                Text { text: Strings.t("health"); color: "#8fa3c0"; font.pixelSize: 13; anchors.verticalCenter: parent.verticalCenter; width: 70; wrapMode: Text.WordWrap } }
            Column { anchors.verticalCenter: parent.verticalCenter
                Text { text: Strings.t("wave"); color: "#8fa3c0"; font.pixelSize: 13 }
                Text { text: (game ? (game.phase === "build" ? Math.min(game.wave + 1, game.waveCount) : game.wave) : 1) + " / " + (game ? game.waveCount : 15); color: "white"; font.pixelSize: 22; font.bold: true } }
            Column { anchors.verticalCenter: parent.verticalCenter
                Text { text: Strings.t("enemies"); color: "#8fa3c0"; font.pixelSize: 13 }
                Text { text: hud.v, (game ? game.remaining : 0) + " " + Strings.t("remaining"); color: "white"; font.pixelSize: 22; font.bold: true } }
        }
    }
    Row {
        anchors.right: parent.right; anchors.rightMargin: 12; y: 12; spacing: 8
        BigButton { text: Strings.t("speedNormal"); checked: game && game.speed === 1; tone: "#2f7ff2"; implicitWidth: 64; onClicked: game.speed = 1 }
        BigButton { text: Strings.t("speedFast"); checked: game && game.speed === 2; tone: "#2f7ff2"; implicitWidth: 64; onClicked: game.speed = 2 }
        BigButton { text: "❚❚"; sub: Strings.t("pause"); tone: "#4a5568"; implicitWidth: 76; onClicked: game.togglePause() }
    }

    // ---- wave card (build phase) -----------------------------------------------------------------
    Panel {
        id: waveCard
        visible: hud.playing && game.phase === "build"
        anchors.right: parent.right; anchors.rightMargin: 12; anchors.bottom: parent.bottom; anchors.bottomMargin: 12
        width: Math.min(360, parent.width * 0.4); height: waveCol.implicitHeight + 28
        Column {
            id: waveCol
            anchors.centerIn: parent; width: parent.width - 28; spacing: 8
            Text { text: Strings.t("wave") + " " + ((game ? game.wave : 0) + 1) + " · " + Strings.t("incoming"); color: "#8fa3c0"; font.pixelSize: 14 }
            Text { text: game ? game.nextWaveIntro() : ""; color: "white"; font.pixelSize: 18; font.bold: true; width: parent.width; wrapMode: Text.WordWrap }
            Row { spacing: 8
                Repeater { model: hud.v, game ? game.previewNextWave() : []
                    EnemyIcon { etype: modelData.type; count: modelData.count } } }
            BigButton { text: Strings.t("startWave"); sub: "[space]"; primary: true; tone: "#3fd07a"; width: parent.width; onClicked: game.requestStartWave() }
        }
    }

    // ---- reboot button ----------------------------------------------------------------------------------
    Panel {
        visible: hud.playing
        anchors.right: parent.right; anchors.rightMargin: 12; anchors.bottom: parent.bottom
        anchors.bottomMargin: waveCard.visible ? waveCard.height + 20 : 12
        width: 220; height: 88
        Column {
            anchors.centerIn: parent; spacing: 4; width: parent.width - 16
            BigButton {
                width: parent.width
                text: Strings.t("reboot")
                sub: game && game.rebootMode ? Strings.t("cancel") : game && game.rebootReady ? Strings.t("rebootReady") + " [R]" : Strings.t("rebootCooldown") + " " + Math.ceil(game ? game.rebootLeft : 0) + " s"
                tone: "#2f7ff2"; checked: game && game.rebootMode; enabledLook: game && (game.rebootReady || game.rebootMode)
                onClicked: game.toggleRebootMode()
            }
            Rectangle { width: parent.width; height: 6; radius: 3; color: "#1f2838"
                Rectangle { width: parent.width * (game && !game.rebootReady ? 1 - game.rebootLeft / 45 : 1); height: parent.height; radius: 3; color: "#2f7ff2" } }
        }
    }
    Panel {   // reboot aiming hint
        visible: hud.playing && game.rebootMode
        anchors.horizontalCenter: parent.horizontalCenter; y: 90; width: Math.min(520, parent.width - 40); height: 64
        Text { anchors.centerIn: parent; width: parent.width - 24; wrapMode: Text.WordWrap; horizontalAlignment: Text.AlignHCenter; color: "white"; font.pixelSize: 16
               text: Strings.t("rebootHint") + (game ? "  (" + game.rebootTargetsCount() + ")" : "") }
    }

    // ---- build bar (socket selected) ------------------------------------------------------------------
    Panel {
        visible: hud.playing && game.selectedSocket !== "" && game.selectedTower === 0
        x: 12; anchors.bottom: parent.bottom; anchors.bottomMargin: 12
        width: Math.min(parent.width - 240, buildCol.implicitWidth + 28); height: buildCol.implicitHeight + 24
        Column {
            id: buildCol
            anchors.centerIn: parent; spacing: 8
            Row { spacing: 10
                Text { text: Strings.t("socket"); color: "white"; font.pixelSize: 18; font.bold: true; anchors.verticalCenter: parent.verticalCenter }
                Text { text: game ? game.board_socketHint() : ""; color: "#8fa3c0"; font.pixelSize: 14; anchors.verticalCenter: parent.verticalCenter; visible: text !== "" } }
            Row { spacing: 8
                Repeater {
                    model: game ? game.towerOrder : []
                    TowerCard { ttype: modelData; affordable: (hud.v, game.credits >= Towers.towers[modelData].cost); armed: game.armedType === modelData
                                onTapped: game.tapTowerCard(modelData); onHovered: if (game.armedType !== modelData && game.credits >= cost) game.armTower(modelData) } }
                BigButton { text: "✕"; sub: Strings.t("cancel"); tone: "#4a5568"; implicitWidth: 88; height: 92; onClicked: game.clearSelection() } }
            Text { text: game && game.armedType ? Strings.t("tower_" + game.armedType + "_desc") + "  ·  " + Strings.t("range") + " " + Towers.towers[game.armedType].levels[0].range + " m" : Strings.t("socketHint")
                   color: "#dbe4f0"; font.pixelSize: 14; width: buildCol.width; wrapMode: Text.WordWrap }
        }
    }

    // ---- tower panel (tower selected) --------------------------------------------------------------------
    Panel {
        visible: hud.playing && game.selectedTower !== 0
        x: 12; anchors.bottom: parent.bottom; anchors.bottomMargin: 12
        width: Math.min(parent.width - 240, 560); height: towerCol.implicitHeight + 24
        readonly property var info: (hud.v, game && game.selectedTower ? game.selectedTowerInfo() : null)
        Column {
            id: towerCol
            anchors.centerIn: parent; width: parent.width - 28; spacing: 8
            Row { spacing: 12; width: parent.width
                Rectangle { width: 14; height: 44; radius: 4; color: parent.parent.parent.info ? parent.parent.parent.info.def.accent : "white"; anchors.verticalCenter: parent.verticalCenter }
                Column { anchors.verticalCenter: parent.verticalCenter
                    Text { text: parent.parent.parent.parent.info ? Strings.t("tower_" + parent.parent.parent.parent.info.def.id) + "  ·  " + Strings.t("level") + " " + (parent.parent.parent.parent.info.tower.level + 1) : ""; color: "white"; font.pixelSize: 20; font.bold: true }
                    Text { text: { var i = parent.parent.parent.parent.info; if (!i) return ""
                                   var l = i.lvl, parts = [Strings.t("range") + " " + l.range + " m"]
                                   if (l.damage) parts.push(Strings.t("damage") + " " + l.damage); if (l.rate && i.def.role !== "slow") parts.push(Strings.t("rate") + " " + l.rate)
                                   if (l.splash) parts.push(Strings.t("splash") + " " + l.splash + " m"); if (l.slow) parts.push(Strings.t("slow") + " " + Math.round(l.slow * 100) + "% / " + l.slowDuration + " s")
                                   if (l.boost) parts.push(Strings.t("boost") + " ×" + l.boost + " / " + l.boostDuration + " s  " + Strings.t("period") + " " + l.period + " s")
                                   return parts.join("   ") }
                           color: "#dbe4f0"; font.pixelSize: 14 } } }
            Row { spacing: 8
                BigButton { readonly property var i: parent.parent.parent.info
                            text: Strings.t("upgrade"); sub: i && i.upgradeCost >= 0 ? i.upgradeCost + " ●" : Strings.t("max"); primary: true; tone: "#3fd07a"
                            enabledLook: i && i.upgradeCost >= 0 && game.credits >= i.upgradeCost; implicitWidth: 150; onClicked: game.upgradeSelected() }
                BigButton { readonly property var i: parent.parent.parent.info
                            text: Strings.t("sell"); sub: (i ? i.sellValue : 0) + " ●"; tone: "#f2662f"; implicitWidth: 130; onClicked: game.sellSelected() }
                BigButton { text: "✕"; sub: Strings.t("close"); tone: "#4a5568"; implicitWidth: 88; onClicked: game.clearSelection() } }
            Text { readonly property var i: parent.parent.info
                   text: i && i.next ? "→ " + Strings.t("level") + " " + (i.tower.level + 2) + ": " + (i.next.damage ? Strings.t("damage") + " " + i.next.damage + "  " : "") + (i.next.rate && i.def.role !== "slow" ? Strings.t("rate") + " " + i.next.rate + "  " : "") + Strings.t("range") + " " + i.next.range + " m" + (i.next.splash ? "  " + Strings.t("splash") + " " + i.next.splash + " m" : "") + (i.next.slow ? "  " + Strings.t("slow") + " " + Math.round(i.next.slow * 100) + "%" : "") + (i.next.boost ? "  " + Strings.t("boost") + " " + i.next.boostDuration + " s" : "") : Strings.t("tower_" + (i ? i.def.id : "patch") + "_desc")
                   color: "#8fa3c0"; font.pixelSize: 14; width: towerCol.width; wrapMode: Text.WordWrap }
        }
    }

    // ---- hint when nothing is selected ----------------------------------------------------------------------
    Panel {
        visible: hud.playing && game.selectedSocket === "" && game.selectedTower === 0 && !game.rebootMode && game.wave <= 1 && game.phase === "build"
        x: 12; anchors.bottom: parent.bottom; anchors.bottomMargin: 12; width: Math.min(380, parent.width - 240); height: 56
        Text { anchors.centerIn: parent; text: Strings.t("placeHere"); color: "white"; font.pixelSize: 17 }
    }

    // ---- toasts -------------------------------------------------------------------------------------------------
    Column {
        anchors.horizontalCenter: parent.horizontalCenter; y: 84; spacing: 6
        Repeater {
            model: hud.v, game ? game.toasts : []
            Rectangle { width: toastText.implicitWidth + 28; height: 40; radius: 12; color: "#e6141d2b"; border.color: "#3b4c66"
                Text { id: toastText; anchors.centerIn: parent; text: modelData.text; color: "white"; font.pixelSize: 17; font.bold: true } }
        }
    }
    // ---- tower status labels (locked / rebooting countdown) ------------------------------------------------------
    Repeater {
        model: hud.v, game ? game.statusLabels : []
        Rectangle { x: modelData.x - width / 2; y: modelData.y - height / 2; width: lbl.implicitWidth + 16; height: 26; radius: 8; color: modelData.tone; border.color: "white"
            Text { id: lbl; anchors.centerIn: parent; text: modelData.text; color: "white"; font.pixelSize: 14; font.bold: true } }
    }
}
