// A cartoon threat, built from toon boxes so no art asset is required. Driven per frame by
// Board3D.sync(): position, heading, health, reveal/slow state and the simulation time (for bobbing).
import QtQuick
import QtQuick3D
import Clayground.Canvas3D

Node {
    id: root
    property string etype: "bug"
    property real hpRatio: 1
    property bool revealed: true
    property bool slowed: false
    property real heading: 0          // degrees, direction of travel
    property real simTime: 0
    property int seed: 0
    property bool reducedFx: false
    readonly property var tones: ({ bug: "#f28a2f", spam: "#f2d02f", trojan: "#8a4fd6", stealth: "#3fe0f2", lock: "#e63946", boss: "#d8d8d8" })
    readonly property color baseColor: tones[etype] || "#f28a2f"
    readonly property real size: etype === "boss" ? 1.6 : etype === "lock" ? 0.8 : etype === "trojan" ? 0.8 : etype === "bug" ? 0.6 : 0.55
    readonly property real bob: reducedFx ? 0 : Math.sin(simTime * (etype === "spam" ? 9 : 4) + seed) * (etype === "boss" ? 4 : 6)
    readonly property real stealthOpacity: revealed ? 0.95 : 0.22
    eulerRotation.y: heading

    // ---- body ------------------------------------------------------------------------------
    Node {
        id: body
        y: (etype === "spam" ? 22 : etype === "stealth" ? 30 : 8) + root.bob
        eulerRotation.z: root.etype === "boss" && !root.reducedFx ? Math.sin(root.simTime * 2 + root.seed) * 4 : 0
        eulerRotation.x: root.etype === "spam" ? -12 : 0

        // Bug / Trojan / Lock body and Boss: bevelled toon box
        Box3D {
            visible: root.etype !== "stealth" && root.etype !== "spam"
            width: root.size * 100; height: root.size * (root.etype === "lock" ? 80 : 100); depth: root.size * (root.etype === "lock" ? 45 : 100)
            color: root.slowed ? Qt.tint(root.baseColor, "#5522b8e6") : root.baseColor
            bevel: root.etype === "bug" ? 0.35 : root.etype === "boss" ? 0.15 : 0.1
            useToonShading: true
            showEdges: true
            edgeColor: "#241a10"
            edgeThickness: 1.5
            castsShadows: true
        }
        // Spam: an upright envelope (thin box + flap lines)
        Box3D {
            visible: root.etype === "spam"
            width: 70; height: 48; depth: 10
            color: root.slowed ? Qt.tint(root.baseColor, "#5522b8e6") : root.baseColor
            useToonShading: true; showEdges: true; edgeColor: "#5a4a10"; edgeThickness: 1.6
            castsShadows: true
        }
        Box3D { visible: root.etype === "spam"; width: 42; height: 4; depth: 12; z: 1; y: 30; x: -12; eulerRotation.z: 32; color: "#a8901c"; useToonShading: true; showEdges: false }
        Box3D { visible: root.etype === "spam"; width: 42; height: 4; depth: 12; z: 1; y: 30; x: 12; eulerRotation.z: -32; color: "#a8901c"; useToonShading: true; showEdges: false }
        // Stealth: translucent diamond
        Model {
            visible: root.etype === "stealth"
            source: "#Cube"
            y: 31
            scale: Qt.vector3d(0.42, 0.62, 0.42)
            eulerRotation: Qt.vector3d(0, 45, 0)
            materials: PrincipledMaterial {
                baseColor: root.baseColor
                opacity: root.stealthOpacity
                alphaMode: PrincipledMaterial.Blend
                emissiveFactor: root.revealed ? Qt.vector3d(0.2, 0.9, 1.0) : Qt.vector3d(0, 0, 0)
                roughness: 0.3
            }
            castsShadows: root.revealed
        }
        Model {   // reveal halo
            visible: root.etype === "stealth" && root.revealed
            source: "#Sphere"
            y: 31
            scale: Qt.vector3d(0.9, 0.9, 0.9)
            materials: PrincipledMaterial { baseColor: "#3fe0f2"; opacity: 0.18; alphaMode: PrincipledMaterial.Blend; lighting: PrincipledMaterial.NoLighting }
            castsShadows: false
        }
        // Trojan seam + tape
        Box3D { visible: root.etype === "trojan"; y: root.size * 50 - 3; width: root.size * 102; height: 6; depth: root.size * 102; color: "#3d1f6b"; useToonShading: true; showEdges: false }
        Box3D { visible: root.etype === "trojan"; y: -1; width: 14; height: root.size * 102; depth: root.size * 102; color: "#d7c56a"; useToonShading: true; showEdges: false }
        // Lock shackle
        Box3D { visible: root.etype === "lock"; x: -22; y: root.size * 80; width: 10; height: 44; depth: 10; color: "#4a4f5a"; useToonShading: true; showEdges: false }
        Box3D { visible: root.etype === "lock"; x: 22; y: root.size * 80; width: 10; height: 44; depth: 10; color: "#4a4f5a"; useToonShading: true; showEdges: false }
        Box3D { visible: root.etype === "lock"; y: root.size * 80 + 44; width: 54; height: 10; depth: 10; color: "#4a4f5a"; useToonShading: true; showEdges: false }
        Box3D { visible: root.etype === "lock"; z: root.size * 23; y: root.size * 22; width: 10; height: 16; depth: 3; color: "#2b1114"; useToonShading: true; showEdges: false }
        // Boss warning stripes + blinking light
        Repeater3D {
            model: root.etype === "boss" ? 6 : 0
            delegate: Box3D {
                required property int index
                x: -60 + index * 24; y: root.size * 22; z: root.size * 51
                width: 12; height: 22; depth: 3
                eulerRotation.z: 35
                color: index % 2 ? "#1c1c1c" : "#f2c02f"
                useToonShading: true; showEdges: false
            }
        }
        Box3D { visible: root.etype === "boss"; y: root.size * 100 + 6; width: 18; height: 28; depth: 18; color: Math.floor(root.simTime * 3) % 2 ? "#ff3b3b" : "#7a1010"; useToonShading: true; showEdges: false; lighting: 0 }
        Box3D { visible: root.etype === "boss"; y: root.size * 100; width: 26; height: 6; depth: 26; color: "#444"; useToonShading: true; showEdges: false }

        // ---- face (eyes + mouth) on the front (+z) --------------------------------------------
        readonly property real fz: root.etype === "spam" ? 6 : root.etype === "stealth" ? 32 : root.size * (root.etype === "lock" ? 23 : 51)
        readonly property real eyeSpread: root.etype === "boss" ? 26 : root.etype === "spam" ? 12 : 11
        readonly property real eyeY: root.etype === "boss" ? root.size * 70 : root.etype === "spam" ? 16 : root.etype === "stealth" ? 40 : root.size * (root.etype === "lock" ? 40 : 55)
        Box3D { x: -body.eyeSpread; y: body.eyeY; z: body.fz; width: root.etype === "boss" ? 16 : 10; height: root.etype === "boss" ? 20 : 12; depth: 2; color: "white"; useToonShading: true; showEdges: false; lighting: 0
                visible: root.etype !== "stealth" || root.revealed }
        Box3D { x: body.eyeSpread; y: body.eyeY; z: body.fz; width: root.etype === "boss" ? 16 : 10; height: root.etype === "boss" ? 20 : 12; depth: 2; color: "white"; useToonShading: true; showEdges: false; lighting: 0
                visible: root.etype !== "stealth" || root.revealed }
        Box3D { x: -body.eyeSpread + 2; y: body.eyeY - 1; z: body.fz + 1; width: 5; height: 6; depth: 2; color: "#1a1a1a"; useToonShading: true; showEdges: false; lighting: 0
                visible: root.etype !== "stealth" || root.revealed }
        Box3D { x: body.eyeSpread + 2; y: body.eyeY - 1; z: body.fz + 1; width: 5; height: 6; depth: 2; color: "#1a1a1a"; useToonShading: true; showEdges: false; lighting: 0
                visible: root.etype !== "stealth" || root.revealed }
        Box3D { y: body.eyeY - (root.etype === "boss" ? 30 : 14); z: body.fz + 1; width: root.etype === "boss" ? 30 : 16; height: 4; depth: 2; color: "#1a1a1a"; useToonShading: true; showEdges: false; lighting: 0
                eulerRotation.z: root.etype === "bug" ? 0 : root.etype === "lock" ? 180 : 0
                visible: root.etype !== "stealth" || root.revealed }
        // bug antennae
        Box3D { visible: root.etype === "bug"; x: -14; y: root.size * 100 - 4; z: 0; width: 4; height: 22; depth: 4; eulerRotation.z: 20; color: "#241a10"; useToonShading: true; showEdges: false }
        Box3D { visible: root.etype === "bug"; x: 14; y: root.size * 100 - 4; z: 0; width: 4; height: 22; depth: 4; eulerRotation.z: -20; color: "#241a10"; useToonShading: true; showEdges: false }
    }

    // ---- health bar (faces the fixed camera) ----------------------------------------------
    Node {
        y: root.size * 100 + 34 + root.bob
        eulerRotation.x: -50
        eulerRotation.y: -root.heading
        visible: root.hpRatio < 0.999 && (root.etype !== "stealth" || root.revealed)
        Box3D { width: root.size * 90 + 10; height: 7; depth: 2; color: "#25282f"; showEdges: false; lighting: 0; castsShadows: false }
        Box3D { x: -(root.size * 90 + 10) * (1 - root.hpRatio) / 2; width: (root.size * 90 + 10) * Math.max(0.01, root.hpRatio); height: 7; depth: 3
                color: root.hpRatio > 0.5 ? "#3fd07a" : root.hpRatio > 0.25 ? "#f2c02f" : "#e63946"; showEdges: false; lighting: 0; castsShadows: false }
    }
    // slow indicator: small ice-blue ring on the floor
    Model {
        visible: root.slowed
        source: "#Cylinder"
        y: 2
        scale: Qt.vector3d(root.size * 1.2, 0.02, root.size * 1.2)
        materials: PrincipledMaterial { baseColor: "#22b8e6"; opacity: 0.4; alphaMode: PrincipledMaterial.Blend; lighting: PrincipledMaterial.NoLighting }
        castsShadows: false
    }
}
