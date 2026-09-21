// Short-lived effects: firewall burst ring, defeat "poof", reveal flash, escape alarm ring.
// A pool of these is recycled by Board3D; `life` runs 1 -> 0.
import QtQuick
import QtQuick3D

Node {
    id: root
    property string kind: "burst"        // burst | poof | reveal | alarm | boost | rebootRing
    property color tone: "#f2662f"
    property real life: 0                // 1 = just spawned, 0 = done
    property real radius: 1.2            // metres (burst / rebootRing)
    visible: life > 0
    readonly property real k: 1 - life

    Model {   // expanding flat ring
        visible: root.kind === "burst" || root.kind === "rebootRing" || root.kind === "alarm" || root.kind === "reveal"
        source: "#Cylinder"
        y: 3
        scale: Qt.vector3d(root.radius * (0.4 + 1.6 * root.k), 0.02, root.radius * (0.4 + 1.6 * root.k))
        materials: PrincipledMaterial { baseColor: root.tone; opacity: 0.55 * root.life; alphaMode: PrincipledMaterial.Blend; lighting: PrincipledMaterial.NoLighting }
        castsShadows: false
    }
    // a credit coin pops out of a defeated threat (the coin model from the reference set, placeholder box until generated)
    PropVisual {
        visible: root.kind === "coin"
        assetId: "coin"
        height: 0.45
        y: 20 + 110 * Math.sin(Math.min(1, root.k) * 3.1416)
        eulerRotation.y: root.k * 540
        scale: Qt.vector3d(1, 1, 1)
        opacity: root.life
    }
    Model {   // rising puff
        visible: root.kind === "poof" || root.kind === "boost"
        source: "#Sphere"
        y: 50 + 80 * root.k
        scale: Qt.vector3d(0.5 + 0.6 * root.k, 0.5 + 0.6 * root.k, 0.5 + 0.6 * root.k)
        materials: PrincipledMaterial { baseColor: root.tone; opacity: 0.7 * root.life; alphaMode: PrincipledMaterial.Blend; lighting: PrincipledMaterial.NoLighting }
        castsShadows: false
    }
}
