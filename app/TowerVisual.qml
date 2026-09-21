// A placed tower: socket plate, the equipment body (QtMeshEditor model or placeholder), level accents,
// and state indicators (disabled by ransomware, rebooting, boosted). Updated per frame by Board3D.sync().
import QtQuick
import QtQuick3D
import Clayground.Canvas3D
import "config/towers.js" as Towers

Node {
    id: root
    property string ttype: "patch"
    property int level: 0
    property bool active: true
    property bool disabled: false        // by ransomware
    property bool rebooting: false
    property bool boosted: false
    property bool selected: false
    property real aim: 0                 // yaw towards the current target
    property real simTime: 0
    property real cooldownLeft: 0        // seconds until disabled/reboot ends
    property bool reducedFx: false
    readonly property var def: Towers.towers[ttype]
    readonly property color accent: def ? def.accent : "#2f7ff2"
    readonly property string role: def ? def.role : "single"

    // socket plate with the role colour
    Box3D { y: 0; width: 96; height: 8; depth: 96; bevel: 0.2; color: "#c9d3e0"; useToonShading: true; showEdges: true; edgeColor: "#7c8796"; edgeThickness: 1.2; receivesShadows: true }
    Box3D { y: 8; width: 84; height: 3; depth: 84; color: root.active ? root.accent : "#6b6f78"; useToonShading: true; showEdges: false; lighting: 0.6 }

    // equipment: rotates toward the target for attacking towers
    Node {
        id: turret
        y: 11
        eulerRotation.y: root.role === "single" || root.role === "scan" ? root.aim : 0
        PropVisual {
            assetId: root.def ? root.def.asset : "laptop"        // height comes from the asset manifest
            tint: root.selected ? 0.5 : 0
        }
        // Patch station: desk under the laptop
        Box3D { visible: root.role === "single"; y: -10; width: 80; height: 10; depth: 60; color: "#d9a066"; useToonShading: true; showEdges: true; edgeColor: "#6b4a2b" }
        // Firewall: shield panel on the front
        Box3D { visible: root.role === "splash"; y: 22; z: 30; width: 34; height: 40; depth: 6; bevel: 0.3; color: "#f2662f"; useToonShading: true; showEdges: true; edgeColor: "#7a2e10"; lighting: 0.9 }
        Box3D { visible: root.role === "splash"; y: 31; z: 34; width: 18; height: 22; depth: 2; color: "#fff1e0"; useToonShading: true; showEdges: false; lighting: 0 }
        // Traffic controller: signal indicator mast
        Box3D { visible: root.role === "slow"; y: 40; width: 6; height: 40; depth: 6; color: "#4a4f5a"; useToonShading: true; showEdges: false }
        Box3D { visible: root.role === "slow"; y: 78; width: 18; height: 18; depth: 18; bevel: 0.5; color: Math.floor(root.simTime * 2) % 2 ? "#22b8e6" : "#0e6f8c"; useToonShading: true; showEdges: false; lighting: 0 }
        // Scanner: rotating indicator ring
        Node {
            visible: root.role === "scan"
            y: 100
            eulerRotation.y: root.reducedFx ? 0 : (root.simTime * 120) % 360
            Box3D { x: 30; y: -5; width: 10; height: 10; depth: 10; color: "#3fd07a"; useToonShading: true; showEdges: false; lighting: 0 }
            Box3D { y: -1.5; width: 60; height: 3; depth: 3; color: "#2b7a4a"; useToonShading: true; showEdges: false }
        }
        // Backup station: battery symbol
        Box3D { visible: root.role === "support"; y: 96; width: 30; height: 16; depth: 8; color: "#f2c02f"; useToonShading: true; showEdges: true; edgeColor: "#7a5a10"; lighting: 0.9 }
        Box3D { visible: root.role === "support"; y: 100; x: 17; width: 5; height: 8; depth: 6; color: "#7a5a10"; useToonShading: true; showEdges: false }
        Box3D { visible: root.role === "support"; y: 100; z: 5; width: 14; height: 8; depth: 2; color: "#7a5a10"; useToonShading: true; showEdges: false }
    }

    // level accents: one pip per upgrade + an antenna at level 2
    Repeater3D {
        model: root.level
        delegate: Box3D {
            required property int index
            x: -36 + index * 14; y: 9; z: 42
            width: 10; height: 10; depth: 6
            color: root.accent; useToonShading: true; showEdges: false; lighting: 0
        }
    }
    Box3D { visible: root.level >= 1; x: 38; z: -38; y: 10; width: 4; height: 70; depth: 4; color: "#4a4f5a"; useToonShading: true; showEdges: false }
    Box3D { visible: root.level >= 1; x: 38; z: -38; y: 78; width: 12; height: 12; depth: 12; bevel: 0.5; color: root.accent; useToonShading: true; showEdges: false; lighting: 0 }
    Box3D { visible: root.level >= 2; x: -38; z: -38; y: 10; width: 4; height: 70; depth: 4; color: "#4a4f5a"; useToonShading: true; showEdges: false }
    Box3D { visible: root.level >= 2; x: -38; z: -38; y: 78; width: 12; height: 12; depth: 12; bevel: 0.5; color: root.accent; useToonShading: true; showEdges: false; lighting: 0 }

    // boosted: spinning yellow sparks
    Node {
        visible: root.boosted && root.active
        y: 60
        eulerRotation.y: root.reducedFx ? 0 : (root.simTime * 200) % 360
        Repeater3D {
            model: 3
            delegate: Box3D {
                required property int index
                x: Math.cos(index * 2.094) * 58; z: Math.sin(index * 2.094) * 58
                width: 8; height: 8; depth: 8; bevel: 0.5
                color: "#f2c02f"; useToonShading: true; showEdges: false; lighting: 0; castsShadows: false
            }
        }
    }
    // disabled / rebooting: dark dome + colour cue (the countdown label is drawn by the HUD)
    Model {
        visible: root.disabled || root.rebooting
        source: "#Sphere"
        y: 50
        scale: Qt.vector3d(1.2, 1.1, 1.2)
        materials: PrincipledMaterial { baseColor: root.rebooting ? "#2f7ff2" : "#e63946"; opacity: 0.35; alphaMode: PrincipledMaterial.Blend; lighting: PrincipledMaterial.NoLighting }
        castsShadows: false
    }
    // selection ring
    Model {
        visible: root.selected
        source: "#Cylinder"
        y: 1
        scale: Qt.vector3d(1.3, 0.02, 1.3)
        materials: PrincipledMaterial { baseColor: "white"; opacity: 0.5; alphaMode: PrincipledMaterial.Blend; lighting: PrincipledMaterial.NoLighting }
        castsShadows: false
    }
}
