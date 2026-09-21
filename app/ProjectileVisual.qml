// A data pulse (single target) or a firewall burst shell. Position set per frame by Board3D.sync().
import QtQuick
import QtQuick3D
import Clayground.Canvas3D

Node {
    id: root
    property string kind: "pulse"
    property color tone: "#2f7ff2"
    property real simTime: 0
    y: 70 + (kind === "burst" ? Math.sin(Math.min(1, progress) * Math.PI) * 60 : 0)
    property real progress: 0
    Box3D {
        width: root.kind === "burst" ? 22 : 14; height: root.kind === "burst" ? 22 : 14; depth: root.kind === "burst" ? 22 : 26
        bevel: 0.5
        eulerRotation.y: (root.simTime * 400) % 360
        color: root.tone
        useToonShading: true; showEdges: false; lighting: 0; castsShadows: false
    }
}
