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
    Component.onCompleted: if (Qt.platform.pluginName === "minimal") Qt.quit()

    TdGame {
        anchors.fill: parent
        focus: true
        onQuitRequested: Qt.quit()
    }
}
