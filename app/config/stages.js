// The stages. Units are metres; x grows to the right, z towards the camera. Every route is a fixed
// axis-aligned polyline (no pathfinding); sockets are the only places a tower can go. Stage 1 is the
// original datacenter floor. `waves` = number of waves (the last one is always the Friday Deployment),
// `hp` scales enemy health, `credits` is the starting budget. Names are string keys (stage_<id>).
.pragma library

var board = { minX: -11, maxX: 11, minZ: -6.5, maxZ: 6.5 }
var pathWidth = 1.3

// perimeter decoration shared by every stage; each stage lists which corners it uses (paths never enter
// the corner cells, so any subset is safe) plus optional extra props
var cornerDecor = {
    topLeft:     [ { asset: "desk", x: -9.0, z: -5.6, yaw: 0, scale: 1.0 }, { asset: "chair", x: -9.0, z: -4.6, yaw: 180, scale: 1.0 },
                   { asset: "laptop", x: -9.2, z: -5.6, yaw: 0, scale: 0.45, y: 0.75 }, { asset: "plant", x: -10.4, z: -6.0, yaw: 0, scale: 1.0 },
                   { asset: "tech_headset", x: -9.0, z: -4.3, yaw: 180, scale: 1.2, clip: "Typing" } ],
    topRight:    [ { asset: "boxes", x: 10.3, z: -4.4, yaw: 20, scale: 1.3 },
                   { asset: "tech_helmet", x: 9.6, z: -6.0, yaw: 200, scale: 1.2, clip: "Idle" } ],
    bottomRight: [ { asset: "boxes", x: 10.2, z: 5.6, yaw: -30, scale: 1.0 }, { asset: "toolbox", x: 9.2, z: 6.0, yaw: 10, scale: 0.6 } ],
    bottomLeft:  [ { asset: "water_cooler", x: -10.4, z: 5.6, yaw: 90, scale: 1.4 }, { asset: "extinguisher", x: -9.3, z: 6.1, yaw: 0, scale: 1.0 } ],
    leftWall:    [ { asset: "water_cooler", x: -10.4, z: 1.8, yaw: 90, scale: 1.4 }, { asset: "coffee_machine", x: -10.4, z: -1.8, yaw: 90, scale: 1.1 } ],
    rightWall:   [ { asset: "printer", x: 10.4, z: 1.9, yaw: -90, scale: 0.8 }, { asset: "extinguisher", x: 10.4, z: -1.6, yaw: 0, scale: 1.0 } ],
    topWall:     [ { asset: "server_2u", x: -4.5, z: -6.1, yaw: 0, scale: 0.9 }, { asset: "patch_panel", x: 4.5, z: -6.1, yaw: 0, scale: 0.9 } ]
}

function S(x, z) { return { x: x, z: z } }
function sock(list) { return list.map(function (p, i) { return { id: "s" + (i + 1), x: p[0], z: p[1], hint: p[2] || "" } }) }

var stages = [
    { id: 1, waves: 8, hp: 1.0, credits: 200,
      path: [S(-11, 4.5), S(-7.5, 4.5), S(-7.5, -4.5), S(7.5, -4.5), S(7.5, 4.5), S(-2.5, 4.5), S(-2.5, -0.5), S(2.5, -0.5), S(2.5, 1.4)],
      rack: { x: 2.5, z: 2.6, yaw: 0 },
      sockets: sock([[-5, 2, "corners"], [-5, -2.2, "corners"], [0, -2.5, "splash"], [5, -2.2, "corners"], [5, 2, "corners"], [0.2, 1.4, "support"],
                     [-9.6, 0, "range"], [9.6, 0, "range"], [-5, 5.9, "entrance"], [4.5, 5.9, "splash"], [0, -5.7, "range"], [-0.6, 3.1, "support"]]),
      decor: ["topLeft", "topRight", "bottomRight", "leftWall", "rightWall", "topWall"],
      extra: [ { asset: "tech_polo", x: 4.0, z: 2.9, yaw: 220, scale: 1.2, clip: "Idle" } ] },

    { id: 2, waves: 10, hp: 1.0, credits: 220,
      path: [S(-11, -4), S(-7, -4), S(-7, 4), S(-1, 4), S(-1, -4), S(5, -4), S(5, 4), S(9, 4), S(9, 2)],
      rack: { x: 9, z: 0.8, yaw: 0 },
      sockets: sock([[-4, -2.5, "corners"], [-4, 2.5, "corners"], [2, -2.5, "corners"], [2, 2.5, "corners"], [-9.5, -1, "range"], [-9.5, 2, "range"],
                     [7, -1.5, "support"], [7, 1.5, "support"], [-4, -5.8, "entrance"], [2, -5.8, "range"], [-4, 5.8, "splash"], [2, 5.8, "splash"]]),
      decor: ["topRight", "bottomLeft"], extra: [] },

    { id: 3, waves: 10, hp: 1.1, credits: 220,
      path: [S(-11, 0), S(-8.5, 0), S(-8.5, -4.5), S(-4.5, -4.5), S(-4.5, 4.5), S(-0.5, 4.5), S(-0.5, -4.5), S(3.5, -4.5), S(3.5, 4.5), S(7.5, 4.5), S(7.5, 0), S(9.2, 0)],
      rack: { x: 10.3, z: 0, yaw: 90 },
      sockets: sock([[-6.5, -2, "corners"], [-6.5, 2.5, "corners"], [-2.5, -2, "splash"], [-2.5, 2.5, "splash"], [1.5, -2, "splash"], [1.5, 2.5, "splash"],
                     [5.5, -2, "corners"], [5.5, 2.5, "corners"], [9.3, -3, "support"], [9.3, 3, "support"], [-9.8, -3, "entrance"], [-9.8, 3.5, "entrance"]]),
      decor: ["topRight", "bottomRight", "bottomLeft", "topWall"], extra: [] },

    { id: 4, waves: 12, hp: 1.1, credits: 240,
      path: [S(-11, 5), S(8, 5), S(8, -5), S(-7, -5), S(-7, -1), S(1, -1), S(1, 1.2)],
      rack: { x: 1, z: 2.4, yaw: 0 },
      sockets: sock([[-7.5, 2.5, "entrance"], [-4, 2.5, "splash"], [4, 2.5, "corners"], [5.5, -3, "corners"], [0, -3, "splash"], [-4, -3, "splash"],
                     [-9.5, -3, "range"], [10, 0, "range"], [-9.5, 1.5, "range"], [5.5, 1.5, "support"], [-1, 2.5, "support"], [-1.5, 1, "support"]]),
      decor: ["topLeft", "topRight", "bottomRight"], extra: [] },

    { id: 5, waves: 12, hp: 1.2, credits: 240,
      path: [S(-11, -4.5), S(-6, -4.5), S(-6, 4.5), S(-2, 4.5), S(-2, -4.5), S(2, -4.5), S(2, 4.5), S(6, 4.5), S(6, -4.5), S(9.5, -4.5), S(9.5, -2.6)],
      rack: { x: 9.5, z: -1.4, yaw: 0 },
      sockets: sock([[-4, -2, "corners"], [-4, 2, "corners"], [0, -2, "splash"], [0, 2, "splash"], [4, -2, "corners"], [4, 2, "corners"],
                     [-8.5, -2, "entrance"], [-8.5, 2, "range"], [8, 1, "support"], [-4, 5.9, "range"], [0, 5.9, "range"], [4, 5.9, "range"]]),
      decor: ["bottomRight", "bottomLeft", "leftWall"], extra: [] },

    { id: 6, waves: 12, hp: 1.25, credits: 240,
      path: [S(-11, -5), S(8.5, -5), S(8.5, 5), S(-8.5, 5), S(-8.5, -1), S(-2, -1), S(-2, 1.2)],
      rack: { x: -2, z: 2.4, yaw: 0 },
      sockets: sock([[-10.2, -3, "entrance"], [-5, -3, "splash"], [0.5, -3, "splash"], [4, -2.5, "corners"], [6, -2.5, "corners"], [10.2, 0, "range"],
                     [6, 0, "corners"], [6, 2.5, "corners"], [4, 2.5, "corners"], [0.5, 2.5, "support"], [-5, 2.5, "support"], [-10.2, 2, "range"]]),
      decor: ["topRight"], extra: [] },

    { id: 7, waves: 13, hp: 1.3, credits: 280,
      path: [S(-11, 5), S(-7, 5), S(-7, 2), S(-3, 2), S(-3, -1), S(1, -1), S(1, -4), S(9, -4), S(9, -1.8)],
      rack: { x: 9, z: -0.6, yaw: 0 },
      sockets: sock([[-9.5, 1.5, "entrance"], [-5, 4, "corners"], [-5, -0.5, "corners"], [-1, 0.5, "corners"], [-1, -3, "corners"], [3, -2.5, "splash"],
                     [3, -5.9, "range"], [7, -5.9, "range"], [7, -2, "support"], [3, 1.5, "range"], [6, 2, "range"], [1, 4.5, "range"], [-3, 5.5, "range"]]),
      decor: ["topLeft", "bottomRight", "rightWall"], extra: [] },

    { id: 8, waves: 13, hp: 1.35, credits: 250,
      path: [S(-11, -5), S(-3, -5), S(-3, 3), S(-8, 3), S(-8, -1), S(2, -1), S(2, 5), S(8, 5), S(8, -5), S(5.2, -5)],
      rack: { x: 4, z: -5, yaw: 90 },
      sockets: sock([[-5.5, -3, "corners"], [-5.5, 1, "splash"], [-0.5, -3, "corners"], [-0.5, 1.5, "splash"], [4.5, 1.5, "support"], [4.5, -2.5, "corners"],
                     [10, 0, "range"], [10, -3, "range"], [-10, -3, "entrance"], [-10, 1, "range"], [-5.5, 5.2, "range"], [-8, 5.5, "range"]]),
      decor: ["topRight", "bottomLeft"], extra: [] },

    { id: 9, waves: 14, hp: 1.4, credits: 260,
      path: [S(-11, 3), S(-9, 3), S(-9, -3), S(-5, -3), S(-5, 3), S(-1, 3), S(-1, -3), S(3, -3), S(3, 3), S(7, 3), S(7, -3), S(9.5, -3), S(9.5, -0.8)],
      rack: { x: 9.5, z: 0.4, yaw: 0 },
      sockets: sock([[-7, 0, "corners"], [-3, 0, "corners"], [1, 0, "corners"], [5, 0, "corners"], [-7, -5.5, "range"], [-3, 5.5, "range"],
                     [1, -5.5, "range"], [5, 5.5, "range"], [-7, 5.5, "entrance"], [5, -5.5, "range"], [-3, -5.5, "range"], [1, 5.5, "range"]]),
      decor: ["topLeft", "topRight", "bottomRight", "bottomLeft"], extra: [] },

    { id: 10, waves: 15, hp: 1.2, credits: 300,
      path: [S(-11, -2), S(-5, -2), S(-5, -5), S(4, -5), S(4, -1), S(-2, -1), S(-2, 5), S(7, 5), S(7, 1.4)],
      rack: { x: 7, z: 0.2, yaw: 0 },
      sockets: sock([[-8, -3.5, "entrance"], [-8, 0, "corners"], [-2, -3.5, "splash"], [1, -3, "splash"], [6, -3, "corners"], [1, 1, "support"],
                     [5, 3, "corners"], [-4, 1.5, "corners"], [-4.5, 5.5, "range"], [9, 3, "range"], [8.5, -1.2, "support"], [6, -6.0, "range"]]),
      decor: ["topRight", "bottomRight", "bottomLeft", "rightWall"], extra: [] },

    { id: 11, waves: 15, hp: 1.55, credits: 240,
      path: [S(-11, -4.5), S(7.5, -4.5), S(7.5, 4.5), S(-7.5, 4.5), S(-7.5, 0.5), S(2.5, 0.5), S(2.5, -1.4)],
      rack: { x: 2.5, z: -2.6, yaw: 180 },
      sockets: sock([[-5, -2, "corners"], [-5, 2.2, "corners"], [0, 2.5, "splash"], [5, 2.2, "corners"], [5, -2, "corners"], [0.2, -1.4, "support"],
                     [-9.6, 0, "range"], [9.6, 0, "range"], [-5, -5.9, "entrance"], [4.5, -5.9, "splash"], [0, 5.9, "range"], [-0.6, -3.1, "support"]]),
      decor: ["bottomLeft", "bottomRight", "leftWall", "rightWall"], extra: [] },

    { id: 12, waves: 15, hp: 1.5, credits: 240,
      path: [S(-11, 5), S(-8, 5), S(-8, -5), S(-4, -5), S(-4, 5), S(0, 5), S(0, -5), S(4, -5), S(4, 5), S(8, 5), S(8, -3.6)],
      rack: { x: 8, z: -4.8, yaw: 180 },
      sockets: sock([[-6, -2.5, "corners"], [-6, 2.5, "corners"], [-2, -2.5, "splash"], [-2, 2.5, "splash"], [2, -2.5, "splash"], [2, 2.5, "splash"],
                     [6, -1, "support"], [6, 3, "corners"], [-10, -1, "range"], [-10, 2.5, "entrance"], [10, -0.5, "range"], [10, -3, "range"]]),
      decor: ["topRight", "rightWall"], extra: [] }
]

function stageCount() { return stages.length }
function stage(index) { return stages[Math.max(0, Math.min(stages.length - 1, index))] }
// the map object the simulation and the board consume
function mapOf(st) {
    var decor = []
    st.decor.forEach(function (k) { decor = decor.concat(cornerDecor[k] || []) })
    decor = decor.concat(st.extra || [])
    return { board: board, pathWidth: pathWidth, path: st.path, portal: st.path[0], rack: st.rack, sockets: st.sockets, decor: decor }
}
function difficulty(st) { return st.hp < 1.05 ? 1 : st.hp < 1.25 ? 2 : st.hp < 1.45 ? 3 : st.hp < 1.65 ? 4 : 5 }
