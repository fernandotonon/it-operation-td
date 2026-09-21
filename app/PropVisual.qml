// The visual of a prop/tower body: a QtMeshEditor model (balsam QML) when the manifest has one,
// toon placeholder boxes otherwise. Origin: bottom centre. Scene units: 1 m = 100.
import QtQuick
import QtQuick3D
import Clayground.Canvas3D
import "scripts/PlaceholderShapes.js" as Shapes
import "config/assets.js" as Assets

Node {
    id: root
    property string assetId: ""
    property var def: Assets.get(assetId)
    property real height: def ? def.height : 1        // metres
    property real tint: 0                              // 0..1 highlight
    property string clip: "Idle"                       // animation clip for rigged models (ignored by static ones)
    property bool useModels: true
    readonly property bool wantsModel: useModels && def && def.representation === "model" && def.model !== ""
    readonly property bool modelReady: modelLoader.status === Loader3D.Ready
    readonly property real fitScale: def && def.unitHeight ? height / def.unitHeight : 1
    // TRELLIS.2 turns the reflection under a concept image into a thin base slab: sinking the model a few
    // centimetres into the floor hides it (manifest `sink`, metres; default 4 cm for generated models)
    readonly property real sink: def && def.sink !== undefined ? def.sink : 0.01

    Loader3D {
        id: modelLoader
        active: root.wantsModel
        source: root.wantsModel ? Qt.resolvedUrl(root.def.model) : ""
        scale: Qt.vector3d(root.fitScale * 100, root.fitScale * 100, root.fitScale * 100)
        y: (root.def && root.def.footOffset ? root.def.footOffset : 0) * root.fitScale * 100 - root.sink * 100
        eulerRotation.y: root.def && root.def.rotation ? root.def.rotation : 0
        onStatusChanged: if (status === Loader3D.Error) console.warn("PropVisual: failed to load", source)
        onLoaded: if (item && item.clip !== undefined) item.clip = Qt.binding(function () { return root.clip })
    }

    Node {
        visible: !root.modelReady
        Repeater3D {
            model: root.def ? Shapes.parts(root.def.placeholder.shape, root.height, root.def.placeholder) : Shapes.parts("box", root.height, {})
            delegate: Box3D {
                required property var modelData
                x: modelData.x * 100; y: modelData.y * 100; z: modelData.z * 100
                width: modelData.w * 100; height: modelData.h * 100; depth: modelData.d * 100
                color: Qt.tint(modelData.color, Qt.rgba(1, 1, 0.6, root.tint * 0.5))
                useToonShading: true
                showEdges: !modelData.glow
                edgeColor: "#1c1f27"
                edgeThickness: 1.2
                lighting: modelData.glow ? 0 : 1
                castsShadows: true
                receivesShadows: true
            }
        }
    }
}
