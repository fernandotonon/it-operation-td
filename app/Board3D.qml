// The datacenter floor: fixed elevated camera, route, sockets, rack, portal, decoration, and the pooled
// visuals for enemies / towers / projectiles / effects. Reads the simulation each frame via sync();
// never changes it. Scene units: 1 m = 100.
import QtQuick
import QtQuick3D
import Clayground.Canvas3D
import "config/stages.js" as St
import "config/towers.js" as Towers

Item {
    id: board
    property var sim: null
    property var map: St.mapOf(St.stages[0])      // the stage's board, path, sockets, rack, decor (set by TdGame)
    property real simTime: 0
    property bool reducedFx: false
    property bool useModels: true
    property string selectedSocket: ""
    property int selectedTower: 0
    property string previewType: ""          // armed tower type -> range ring at the selected socket
    property var rebootCursor: null           // { x, z } while aiming the Emergency Reboot
    property real healthRatio: 1
    property bool celebrate: false            // victory: every technician cheers
    property var occupied: ({})
    signal tapped(real x, real z)
    signal hovered(real x, real z)
    readonly property var mapPath: map.path
    readonly property var sockets: map.sockets
    readonly property real pathLen: sim ? sim.pathLength : 1

    // Screen position of a board point. Projected through the camera's own matrices (mapToViewport is pure
    // math), so it is also valid before the first frame - View3D.mapFrom3DScene needs render data.
    function toScreen(x, y, z) {
        var v = camera.mapToViewport(Qt.vector3d(x * 100, y * 100, z * 100))
        return Qt.point(v.x * view.width, v.y * view.height)
    }
    // Floor point under a screen position. The ray is built from the camera's own transform (fov, aspect,
    // rotation) rather than View3D.mapTo3DScene, which needs render data and returned nothing here.
    function groundPoint(mx, my) {
        if (view.width <= 0 || view.height <= 0) return null
        var aspect = view.width / view.height
        var tanHalf = Math.tan(camera.fieldOfView * Math.PI / 360)
        var ndcX = 2 * mx / view.width - 1, ndcY = 1 - 2 * my / view.height
        var local = Qt.vector3d(ndcX * tanHalf * aspect, ndcY * tanHalf, -1)
        var dir = camera.mapDirectionToScene(local)
        var origin = camera.scenePosition
        if (Math.abs(dir.y) < 1e-6) return null
        var t = -origin.y / dir.y
        if (t < 0) return null
        return { x: (origin.x + dir.x * t) / 100, z: (origin.z + dir.z * t) / 100 }
    }
    function socketNear(x, z, maxDist) {
        var best = null, bd = maxDist || 0.9
        for (var i = 0; i < map.sockets.length; i++) {
            var s = map.sockets[i], d = Math.hypot(s.x - x, s.z - z)
            if (d < bd) { bd = d; best = s }
        }
        return best
    }
    function socketById(id) { for (var i = 0; i < map.sockets.length; i++) if (map.sockets[i].id === id) return map.sockets[i]; return null }

    View3D {
        id: view
        anchors.fill: parent
        environment: SceneEnvironment {
            clearColor: "#0f1a2e"
            backgroundMode: SceneEnvironment.Color
            antialiasingMode: board.reducedFx ? SceneEnvironment.NoAA : SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.Medium
        }
        PerspectiveCamera {
            id: camera
            position: Qt.vector3d(0, 1720, 1380)
            eulerRotation.x: -51
            fieldOfView: 40
            clipFar: 8000
        }
        DirectionalLight {
            eulerRotation: Qt.vector3d(-58, -28, 0)
            brightness: 0.85
            castsShadow: !board.reducedFx
            shadowFactor: 45
            shadowMapQuality: Light.ShadowMapQualityHigh
            shadowBias: 8
            pcfFactor: 6
            csmNumSplits: 0
        }
        DirectionalLight { eulerRotation: Qt.vector3d(-30, 150, 0); brightness: 0.35; color: "#cfe0ff" }

        // ---- floor and perimeter ---------------------------------------------------------------
        Box3D { y: -10; width: (board.map.board.maxX - board.map.board.minX) * 100; height: 10; depth: (board.map.board.maxZ - board.map.board.minZ) * 100
                color: "#d3dbe6"; useToonShading: true; showEdges: false; receivesShadows: true; castsShadows: false }
        Repeater3D {   // tile seams
            model: Math.round(board.map.board.maxX - board.map.board.minX) + 1
            delegate: Box3D { required property int index; x: (board.map.board.minX + index) * 100; y: 0; width: 2; height: 0.8; depth: (board.map.board.maxZ - board.map.board.minZ) * 100; color: "#c5cfdb"; showEdges: false; lighting: 0; castsShadows: false }
        }
        Repeater3D {
            model: Math.round(board.map.board.maxZ - board.map.board.minZ) + 1
            delegate: Box3D { required property int index; z: (board.map.board.minZ + index) * 100; y: 0; width: (board.map.board.maxX - board.map.board.minX) * 100; height: 0.8; depth: 2; color: "#c5cfdb"; showEdges: false; lighting: 0; castsShadows: false }
        }
        // low walls; the back wall carries the monitoring wall
        Box3D { z: (board.map.board.minZ - 0.15) * 100; y: 0; width: (board.map.board.maxX - board.map.board.minX + 0.6) * 100; height: 120; depth: 30; color: "#b9c6d6"; useToonShading: true; showEdges: true; edgeColor: "#7c8796" }
        Repeater3D {
            model: 8
            delegate: Box3D { required property int index; x: -700 + index * 200; z: (board.map.board.minZ) * 100 + 2; y: 48; width: 150; height: 60; depth: 4
                              color: index % 3 === 0 ? "#2f7ff2" : index % 3 === 1 ? "#1d4fa8" : "#3fd07a"; showEdges: true; edgeColor: "#0b1a33"; lighting: 0; castsShadows: false }
        }
        Box3D { x: (board.map.board.minX - 0.15) * 100; y: 0; width: 30; height: 50; depth: (board.map.board.maxZ - board.map.board.minZ) * 100; color: "#b9c6d6"; useToonShading: true; showEdges: true; edgeColor: "#7c8796" }
        Box3D { x: (board.map.board.maxX + 0.15) * 100; y: 0; width: 30; height: 50; depth: (board.map.board.maxZ - board.map.board.minZ) * 100; color: "#b9c6d6"; useToonShading: true; showEdges: true; edgeColor: "#7c8796" }
        Box3D { z: (board.map.board.maxZ + 0.15) * 100; y: 0; width: (board.map.board.maxX - board.map.board.minX + 0.6) * 100; height: 24; depth: 30; color: "#b9c6d6"; useToonShading: true; showEdges: true; edgeColor: "#7c8796" }

        // ---- route: cable channel + travelling pulses ------------------------------------------
        Repeater3D {
            model: board.map.path.length - 1
            delegate: Node {
                required property int index
                readonly property var a: board.map.path[index]
                readonly property var b: board.map.path[index + 1]
                readonly property bool horizontal: Math.abs(b.x - a.x) > Math.abs(b.z - a.z)
                readonly property real len: Math.hypot(b.x - a.x, b.z - a.z)
                x: (a.x + b.x) / 2 * 100; z: (a.z + b.z) / 2 * 100
                Box3D { y: 0; width: (horizontal ? len + board.map.pathWidth : board.map.pathWidth) * 100; height: 3; depth: (horizontal ? board.map.pathWidth : len + board.map.pathWidth) * 100
                        color: "#6b7a94"; useToonShading: true; showEdges: false; receivesShadows: true; castsShadows: false }
                Box3D { y: 3; width: (horizontal ? len + board.map.pathWidth - 0.3 : board.map.pathWidth - 0.3) * 100; height: 1; depth: (horizontal ? board.map.pathWidth - 0.3 : len + board.map.pathWidth - 0.3) * 100
                        color: "#8b9bb5"; showEdges: false; lighting: 0.8; receivesShadows: true; castsShadows: false }
            }
        }
        Repeater3D {
            model: board.reducedFx ? 0 : 10
            delegate: Box3D {
                required property int index
                readonly property var p: board.sim ? board.sim.posAt((board.simTime * 1.6 + index * board.pathLen / 10) % board.pathLen) : { x: 0, z: 0 }
                x: p.x * 100; z: p.z * 100; y: 4
                width: 22; height: 3; depth: 22; bevel: 0.5
                color: "#5ab3f0"; showEdges: false; lighting: 0; castsShadows: false
            }
        }

        // ---- entrance portal ----------------------------------------------------------------------
        Node {
            x: board.map.portal.x * 100; z: board.map.portal.z * 100
            Box3D { z: -85; y: 0; width: 30; height: 160; depth: 30; color: "#1d4fa8"; useToonShading: true; showEdges: true; edgeColor: "#0b1a33" }
            Box3D { z: 85; y: 0; width: 30; height: 160; depth: 30; color: "#1d4fa8"; useToonShading: true; showEdges: true; edgeColor: "#0b1a33" }
            Box3D { y: 160; width: 30; height: 24; depth: 200; color: "#1d4fa8"; useToonShading: true; showEdges: true; edgeColor: "#0b1a33" }
            Box3D { y: 5; width: 6; height: 150; depth: 140; color: Qt.rgba(0.35, 0.7, 1, 0.5 + 0.2 * Math.sin(board.simTime * 3)); lighting: 0; showEdges: false; castsShadows: false }
            Box3D { y: 140; width: 8; height: 14; depth: 140; color: "#3fd07a"; lighting: 0; showEdges: false; castsShadows: false }
        }

        // ---- objective: the server rack with a health glow ----------------------------------------
        Node {
            x: board.map.rack.x * 100; z: board.map.rack.z * 100
            Model { source: "#Cylinder"; y: 2; scale: Qt.vector3d(1.7, 0.02, 1.7)
                    materials: PrincipledMaterial { baseColor: board.healthRatio > 0.5 ? "#3fd07a" : board.healthRatio > 0.25 ? "#f2c02f" : "#e63946"; opacity: 0.35 + 0.1 * Math.sin(board.simTime * 4); alphaMode: PrincipledMaterial.Blend; lighting: PrincipledMaterial.NoLighting }
                    castsShadows: false }
            PropVisual { assetId: "server_rack"; height: 2.0; eulerRotation.y: board.map.rack.yaw; useModels: board.useModels }
        }

        // ---- sockets -------------------------------------------------------------------------------
        Repeater3D {
            model: board.map.sockets
            delegate: Node {
                required property var modelData
                readonly property bool isSelected: board.selectedSocket === modelData.id
                readonly property bool isOccupied: board.occupied[modelData.id] === true
                x: modelData.x * 100; z: modelData.z * 100
                visible: !isOccupied
                Box3D { y: 0; width: 96; height: 6; depth: 96; bevel: 0.2
                        color: isSelected ? "#5ab3f0" : "#8fc3f5"; useToonShading: true; showEdges: true; edgeColor: "#2f7ff2"; edgeThickness: 1.5; receivesShadows: true; castsShadows: false
                        opacity: 1 }
                Box3D { y: 8 + (board.reducedFx ? 0 : Math.sin(board.simTime * 3) * 2); width: 30; height: 6; depth: 30; bevel: 0.5; color: "#2f7ff2"; showEdges: false; lighting: 0; castsShadows: false }
                Box3D { y: 6; width: 8; height: 8; depth: 40; color: "#2f7ff2"; showEdges: false; lighting: 0; castsShadows: false }
                Box3D { y: 6; width: 40; height: 8; depth: 8; color: "#2f7ff2"; showEdges: false; lighting: 0; castsShadows: false }
            }
        }

        // ---- range preview ring -----------------------------------------------------------------
        Node {
            id: rangeRing
            readonly property var sock: board.socketById(board.selectedSocket)
            readonly property var tower: board.sim && board.selectedTower ? board.sim.towerById(board.selectedTower) : null
            readonly property string ttype: tower ? tower.type : board.previewType
            readonly property real radius: ttype && Towers.towers[ttype] ? Towers.towers[ttype].levels[tower ? tower.level : 0].range : 0
            readonly property real r: Math.max(radius, 0.05) * 100
            visible: radius > 0 && (tower || sock)
            x: (tower ? tower.x : sock ? sock.x : 0) * 100; z: (tower ? tower.z : sock ? sock.z : 0) * 100
            Model { source: "#Cylinder"; y: 1; scale: Qt.vector3d(rangeRing.radius * 2, 0.01, rangeRing.radius * 2)
                    materials: PrincipledMaterial { baseColor: rangeRing.ttype && Towers.towers[rangeRing.ttype] ? Towers.towers[rangeRing.ttype].accent : "white"; opacity: 0.18; alphaMode: PrincipledMaterial.Blend; lighting: PrincipledMaterial.NoLighting }
                    castsShadows: false; receivesShadows: false }
            // ring outline from thin box segments (Poly3D with a hole ring stalls the WebAssembly build)
            Repeater3D {
                model: 48
                delegate: Box3D {
                    required property int index
                    readonly property real a: index / 48 * 6.2832
                    x: Math.cos(a) * (rangeRing.r - 3); z: Math.sin(a) * (rangeRing.r - 3); y: 2
                    eulerRotation.y: -(a * 180 / Math.PI + 90)     // tangent to the circle
                    width: rangeRing.r * 6.2832 / 48 + 2; height: 1.5; depth: 6
                    color: rangeRing.ttype && Towers.towers[rangeRing.ttype] ? Towers.towers[rangeRing.ttype].accent : "white"
                    lighting: 0; showEdges: false; castsShadows: false; receivesShadows: false
                }
            }
        }
        // ---- reboot aim ring -------------------------------------------------------------------
        Node {
            visible: board.rebootCursor !== null
            x: board.rebootCursor ? board.rebootCursor.x * 100 : 0; z: board.rebootCursor ? board.rebootCursor.z * 100 : 0
            Model { source: "#Cylinder"; y: 1.5; scale: Qt.vector3d(5, 0.01, 5)
                    materials: PrincipledMaterial { baseColor: "#2f7ff2"; opacity: 0.25 + 0.1 * Math.sin(board.simTime * 6); alphaMode: PrincipledMaterial.Blend; lighting: PrincipledMaterial.NoLighting }
                    castsShadows: false }
        }

        // ---- perimeter decoration -----------------------------------------------------------------
        Repeater3D {
            model: board.map.decor
            delegate: PropVisual {
                required property var modelData
                assetId: modelData.asset
                x: modelData.x * 100; z: modelData.z * 100; y: (modelData.y || 0) * 100
                eulerRotation.y: modelData.yaw
                height: (def ? def.height : 1) * (modelData.scale || 1)
                useModels: board.useModels
                clip: board.celebrate && modelData.clip ? "Cheer" : (modelData.clip || "Idle")
            }
        }

        // ---- pooled dynamic visuals ---------------------------------------------------------------
        Node { id: towerLayer }
        Node { id: enemyLayer }
        Node { id: projectileLayer }
        Node { id: fxLayer }
    }

    // ---- input: ground picking (mouse and touch) ----------------------------------------------
    function clickAt(mx, my) { var p = groundPoint(mx, my); if (p) tapped(p.x, p.z) }
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: function (mouse) { board.clickAt(mouse.x, mouse.y) }
        onPositionChanged: function (mouse) { var p = board.groundPoint(mouse.x, mouse.y); if (p) board.hovered(p.x, p.z) }
    }

    // ---- pools --------------------------------------------------------------------------------
    Component { id: enemyComp; EnemyVisual {} }
    Component { id: towerComp; TowerVisual {} }
    Component { id: projComp; ProjectileVisual {} }
    Component { id: fxComp; FxBurst {} }
    property var enemyVis: ({})
    property var towerVis: ({})
    property var projVis: ({})
    property var enemyPool: []
    property var projPool: []
    property var fxList: []
    property var beams: []      // { x1,z1,x2,z2, life, tone }
    property int enemyCount: 0

    function acquire(pool, comp, layer) {
        if (pool.length) { var v = pool.pop(); v.visible = true; return v }
        return comp.createObject(layer)
    }
    function reset() {
        for (var id in enemyVis) { enemyVis[id].visible = false; enemyPool.push(enemyVis[id]) }
        enemyVis = {}
        for (var tid in towerVis) towerVis[tid].destroy()
        towerVis = {}
        for (var pid in projVis) { projVis[pid].visible = false; projPool.push(projVis[pid]) }
        projVis = {}
        fxList.forEach(function (f) { f.life = 0 })
        beams = []
        occupied = {}
        selectedSocket = ""; selectedTower = 0; previewType = ""; rebootCursor = null
        enemyCount = 0
    }
    function spawnFx(kind, x, z, tone, radius) {
        if (reducedFx && (kind === "poof" || kind === "boost" || kind === "coin")) return
        var f = null
        for (var i = 0; i < fxList.length; i++) if (fxList[i].life <= 0) { f = fxList[i]; break }
        if (!f) { if (fxList.length > 40) return; f = fxComp.createObject(fxLayer); fxList.push(f) }
        f.kind = kind; f.tone = tone || "#f2662f"; f.radius = radius || 1.2; f.x = x * 100; f.z = z * 100; f.life = 1
    }
    function spawnBeam(x1, z1, x2, z2, tone) {
        if (beams.length > 24) beams.shift()
        beams.push({ x1: x1, z1: z1, x2: x2, z2: z2, life: 1, tone: tone })
        beamsChanged()
    }
    Repeater3D {
        parent: fxLayer
        model: board.beams.length
        delegate: Node {
            required property int index
            readonly property var b: board.beams[index]
            readonly property real len: Math.hypot(b.x2 - b.x1, b.z2 - b.z1) * 100
            x: (b.x1 + b.x2) / 2 * 100; z: (b.z1 + b.z2) / 2 * 100; y: 75
            eulerRotation.y: Math.atan2(b.x2 - b.x1, b.z2 - b.z1) * 180 / Math.PI
            Box3D { width: 6 * b.life; height: 6 * b.life; depth: len; color: b.tone; lighting: 0; showEdges: false; castsShadows: false }
        }
    }

    function sync(dt) {
        if (!sim) return
        var S = sim.state, now = S.time
        // enemies
        var seen = {}, count = 0
        for (var i = 0; i < S.enemies.length; i++) {
            var e = S.enemies[i]
            if (!e.alive) continue
            var v = enemyVis[e.id]
            if (!v) { v = acquire(enemyPool, enemyComp, enemyLayer); enemyVis[e.id] = v; v.etype = e.type; v.seed = e.id % 7 }
            v.x = e.x * 100; v.z = e.z * 100
            v.heading = Math.atan2(e.dx, e.dz) * 180 / Math.PI
            v.hpRatio = e.hp / e.maxHp
            v.revealed = sim.isRevealed(e)
            v.slowed = e.slow > 0
            v.simTime = now
            v.reducedFx = reducedFx
            seen[e.id] = true; count++
        }
        for (var id in enemyVis) if (!seen[id]) { enemyVis[id].visible = false; enemyPool.push(enemyVis[id]); delete enemyVis[id] }
        enemyCount = count
        // towers
        var tseen = {}, occ = {}
        for (var k = 0; k < S.towers.length; k++) {
            var t = S.towers[k]
            var tv = towerVis[t.id]
            if (!tv) { tv = towerComp.createObject(towerLayer, { ttype: t.type }); tv.x = t.x * 100; tv.z = t.z * 100; towerVis[t.id] = tv }
            tv.level = t.level
            tv.active = sim.towerActive(t)
            tv.disabled = t.disabledUntil > now
            tv.rebooting = t.rebootUntil > now
            tv.cooldownLeft = Math.max(t.disabledUntil, t.rebootUntil) - now
            tv.boosted = t.boostUntil > now
            tv.selected = selectedTower === t.id
            tv.simTime = now
            tv.reducedFx = reducedFx
            if (t.target) tv.aim = t.aim
            tseen[t.id] = true; occ[t.socket] = true
        }
        for (var tid in towerVis) if (!tseen[tid]) { towerVis[tid].destroy(); delete towerVis[tid] }
        occupied = occ
        // projectiles
        var pseen = {}
        for (var p = 0; p < S.projectiles.length; p++) {
            var pr = S.projectiles[p]
            if (!pr.alive) continue
            var pv = projVis[pr.id]
            if (!pv) { pv = acquire(projPool, projComp, projectileLayer); projVis[pr.id] = pv; pv.kind = pr.kind; pv.tone = Towers.towers[pr.towerType].accent }
            pv.x = pr.x * 100; pv.z = pr.z * 100; pv.simTime = now
            pseen[pr.id] = true
        }
        for (var pid in projVis) if (!pseen[pid]) { projVis[pid].visible = false; projPool.push(projVis[pid]); delete projVis[pid] }
        // effects
        for (var f = 0; f < fxList.length; f++) if (fxList[f].life > 0) fxList[f].life = Math.max(0, fxList[f].life - dt * (fxList[f].kind === "rebootRing" ? 0.6 : fxList[f].kind === "coin" ? 1.1 : 2.2))
        if (beams.length) { for (var bi = 0; bi < beams.length; bi++) beams[bi].life -= dt * 8; beams = beams.filter(function (b) { return b.life > 0 }) }
    }
}
