// Dojo / clayrender entry point: the whole game as a live-reloading sandbox.
//   claydojo --sbx app/Sandbox.qml
//   clayrender app/Sandbox.qml --out shot.png --size 1400x800 --eval 'game.debugStart(3)'
import QtQuick

Item {
    id: root
    anchors.fill: parent

    TdGame {
        id: game
        anchors.fill: parent
        focus: true
    }

    // Surfaces match state to the Clayground inspector (snapshot/flag) and to clayrender --dump.
    function flagInfo() { return game.debugInfo() }
    function viewState() { return { screen: game.screen, speed: game.speed } }
    function applyViewState(s) { if (s && s.speed) game.speed = s.speed }
}
