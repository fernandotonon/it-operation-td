// Operação TI: Defenda o Datacenter - desktop entry point. Built with Clayground; assets made with QtMeshEditor.
import QtQuick
import QtQuick.Window

Window {
    id: win
    width: 1280
    height: 720
    minimumWidth: 800
    minimumHeight: 480
    visible: true
    color: "#0f1a2e"
    title: "Operação TI: Defenda o Datacenter"

    // Clayground convention: every clay_app is a headless ctest smoke test (QT_QPA_PLATFORM=minimal);
    // loading without warnings is the pass criterion, so quit right after the scene is up.
    Component.onCompleted: { console.log("OperacaoTI: window ready", Qt.platform.pluginName); if (Qt.platform.pluginName === "minimal") Qt.quit() }

    // --minimal (web diagnostics): show only a text item instead of the game
    readonly property bool minimal: Qt.application.arguments.indexOf("--minimal") >= 0
    Loader {
        anchors.fill: parent
        focus: true
        sourceComponent: win.minimal ? minimalComp : gameComp
    }
    Component { id: gameComp; TdGame { anchors.fill: parent; focus: true; onQuitRequested: Qt.quit() } }
    Component { id: minimalComp; Text { anchors.centerIn: parent; text: "Operação TI - minimal"; color: "white"; font.pixelSize: 40
                                        Component.onCompleted: console.log("OperacaoTI: minimal item ready") } }
}
