// Dev sandbox: one asset from the manifest on a turntable, with its animation clip selectable.
//   clayrender app/CharacterPreview.qml --out t.png --set 'assetId="tech_helmet"' --set 'clip="Typing"' --frames 60
//   claydojo --sbx app/CharacterPreview.qml
import QtQuick
import QtQuick3D
import Clayground.Canvas3D
import "config/assets.js" as Assets

Item {
    id: root
    anchors.fill: parent
    property string assetId: "tech_helmet"
    property string clip: "Idle"
    // Review a staged runtime import before installing it in the live asset manifest.
    property string runtimeSource: ""
    property real sourceHeight: 1
    property real sourceFootOffset: 0.5
    property real yaw: 0
    // currentFrame of the active Timeline inside the loaded runtime QML (proves the clip advances)
    function activeFrame() {
        var item = prop.children.length ? null : null
        function find(o) {
            if (!o) return -1
            if (o.objectName === root.clip && o.currentFrame !== undefined) return o.currentFrame
            for (var i = 0; i < (o.children ? o.children.length : 0); i++) { var r = find(o.children[i]); if (r >= 0) return r }
            if (o.resources) for (var k = 0; k < o.resources.length; k++) { var q = find(o.resources[k]); if (q >= 0) return q }
            return -1
        }
        return find(prop)
    }
    function flagInfo() { return { assetId: assetId, clip: clip, frame: activeFrame() } }
    View3D {
        anchors.fill: parent
        environment: SceneEnvironment { clearColor: "#1a2233"; backgroundMode: SceneEnvironment.Color; antialiasingMode: SceneEnvironment.MSAA }
        PerspectiveCamera { position: Qt.vector3d(0, 110, 220); eulerRotation.x: -14 }
        DirectionalLight { eulerRotation: Qt.vector3d(-45, -30, 0); brightness: 1.0 }
        DirectionalLight { eulerRotation: Qt.vector3d(-20, 150, 0); brightness: 0.4 }
        Box3D { y: -6; width: 300; height: 6; depth: 300; color: "#3a4a63"; useToonShading: true; showEdges: false }
        PropVisual { id: prop; assetId: root.assetId; clip: root.clip; def: root.runtimeSource ? Object.assign({}, Assets.get(root.assetId), { model: root.runtimeSource, unitHeight: root.sourceHeight, footOffset: root.sourceFootOffset }) : Assets.get(root.assetId); eulerRotation.y: root.yaw }
    }
    Text { x: 12; y: 12; color: "white"; font.pixelSize: 18; text: root.assetId + " · " + root.clip }
}
