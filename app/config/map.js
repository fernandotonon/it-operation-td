// The one map: a compact datacenter floor. Units are metres; x grows to the right, z towards the
// camera. The route is a fixed polyline (no pathfinding); sockets are the only places a tower can go.
.pragma library

var board = { minX: -11, maxX: 11, minZ: -6.5, maxZ: 6.5 }

// Entrance portal on the left edge, route winds like a cable channel, server rack near the centre.
var path = [
    { x: -11.0, z: 4.5 },
    { x: -7.5, z: 4.5 },
    { x: -7.5, z: -4.5 },
    { x: 7.5, z: -4.5 },
    { x: 7.5, z: 4.5 },
    { x: -2.5, z: 4.5 },
    { x: -2.5, z: -0.5 },
    { x: 2.5, z: -0.5 },
    { x: 2.5, z: 1.4 }
]
var pathWidth = 1.3
var portal = { x: -11.0, z: 4.5 }
var rack = { x: 2.5, z: 2.6, yaw: 0 }

// Placement sockets. `note` is a plain-language hint shown when the socket is selected.
var sockets = [
    { id: "s1",  x: -5.0, z: 2.0,  hint: "corners" },
    { id: "s2",  x: -5.0, z: -2.2, hint: "corners" },
    { id: "s3",  x: 0.0,  z: -2.5, hint: "splash" },
    { id: "s4",  x: 5.0,  z: -2.2, hint: "corners" },
    { id: "s5",  x: 5.0,  z: 2.0,  hint: "corners" },
    { id: "s6",  x: 0.2,  z: 1.4,  hint: "support" },
    { id: "s7",  x: -9.6, z: 0.0,  hint: "range" },
    { id: "s8",  x: 9.6,  z: 0.0,  hint: "range" },
    { id: "s9",  x: -5.0, z: 5.9,  hint: "entrance" },
    { id: "s10", x: 4.5,  z: 5.9,  hint: "splash" },
    { id: "s11", x: 0.0,  z: -5.9, hint: "range" },
    { id: "s12", x: -0.6, z: 3.1,  hint: "support" }
]

// Perimeter decoration: asset id + position + yaw. Kept off the route and away from sightlines.
var decor = [
    { asset: "desk",           x: -9.0, z: -5.6, yaw: 0,   scale: 1.0 },
    { asset: "chair",          x: -9.0, z: -4.6, yaw: 180, scale: 1.0 },
    { asset: "laptop",         x: -9.2, z: -5.6, yaw: 0,   scale: 0.45, y: 0.75 },
    { asset: "plant",          x: -10.4, z: -6.0, yaw: 0,  scale: 1.0 },
    { asset: "boxes",          x: 9.9, z: -5.8, yaw: 20,   scale: 1.3 },
    { asset: "boxes",          x: 10.2, z: 5.6, yaw: -30,  scale: 1.0 },
    { asset: "toolbox",        x: 9.2, z: 6.0, yaw: 10,    scale: 0.6 },
    { asset: "plant",          x: 10.4, z: -3.8, yaw: 0,   scale: 1.0 },
    { asset: "water_cooler",   x: -10.4, z: 1.8, yaw: 90,  scale: 1.4 },
    { asset: "printer",        x: 10.4, z: 1.9, yaw: -90,  scale: 0.8 },
    { asset: "coffee_machine", x: -10.4, z: -1.8, yaw: 90, scale: 1.1 },
    { asset: "extinguisher",   x: 10.4, z: -1.6, yaw: 0,   scale: 1.0 },
    { asset: "server_2u",      x: -0.4, z: -6.1, yaw: 0,   scale: 0.9, y: 0.0 },
    { asset: "patch_panel",    x: 2.2, z: -6.1, yaw: 0,    scale: 0.9, y: 0.0 },
    { asset: "tech_headset",   x: -9.0, z: -4.3, yaw: 180, scale: 1.2, clip: "Typing" },
    { asset: "tech_helmet",    x: 7.2, z: -5.6, yaw: 150,  scale: 1.2, clip: "Idle" },
    { asset: "tech_polo",      x: 4.0, z: 2.9, yaw: 220,   scale: 1.2, clip: "Idle" }
]
