// Toon-box placeholder shapes for props whose QtMeshEditor model is not available. Parts are
// boxes in metres relative to the prop origin (bottom centre). Used by PropVisual.
.pragma library

function parts(shape, h, p) {
    var c = p.color || "#c98a3e", a = p.accent || "#3a3f4a"
    switch (shape) {
    case "rack":
        var out = [{ x: 0, y: 0, z: 0, w: 0.7, h: h, d: 0.8, color: c }]
        for (var i = 0; i < 6; i++) out.push({ x: 0, y: 0.25 + i * 0.28, z: 0.41, w: 0.55, h: 0.12, d: 0.02, color: i % 2 ? "#1d2029" : "#262a35" })
        for (var k = 0; k < 6; k++) out.push({ x: -0.18 + (k % 3) * 0.12, y: 0.29 + Math.floor(k / 3) * 0.56, z: 0.425, w: 0.05, h: 0.04, d: 0.01, color: k % 3 === 0 ? a : k % 3 === 1 ? "#2f7ff2" : "#f2c02f", glow: true })
        return out
    case "flat":      // switch / 2U appliance / patch panel
        return [{ x: 0, y: 0, z: 0, w: 0.9, h: h, d: 0.5, color: c },
                { x: 0, y: h * 0.35, z: 0.26, w: 0.7, h: h * 0.3, d: 0.02, color: a, glow: true }]
    case "tower":     // UPS / cooler / extinguisher
        return [{ x: 0, y: 0, z: 0, w: 0.5, h: h, d: 0.5, color: c },
                { x: 0, y: h * 0.6, z: 0.26, w: 0.22, h: 0.16, d: 0.02, color: a, glow: true }]
    case "laptop":
        return [{ x: 0, y: 0, z: 0, w: 0.7, h: 0.04, d: 0.5, color: c },
                { x: 0, y: 0.04, z: -0.24, w: 0.7, h: h, d: 0.03, color: c },
                { x: 0, y: 0.08, z: -0.22, w: 0.6, h: h * 0.8, d: 0.01, color: a, glow: true }]
    case "monitor":
        return [{ x: 0, y: 0, z: 0, w: 0.35, h: 0.05, d: 0.25, color: c },
                { x: 0, y: 0.05, z: 0, w: 0.08, h: 0.25, d: 0.08, color: c },
                { x: 0, y: 0.3, z: 0, w: 0.9, h: h - 0.3, d: 0.06, color: c },
                { x: 0, y: 0.34, z: 0.035, w: 0.8, h: h - 0.38, d: 0.01, color: a, glow: true }]
    case "desk":
        return [{ x: 0, y: h - 0.05, z: 0, w: 1.6, h: 0.05, d: 0.8, color: c },
                { x: -0.75, y: 0, z: 0, w: 0.06, h: h - 0.05, d: 0.7, color: a },
                { x: 0.75, y: 0, z: 0, w: 0.06, h: h - 0.05, d: 0.7, color: a }]
    case "boxes":
        return [{ x: 0, y: 0, z: 0, w: 0.9, h: 0.5, d: 0.8, color: c },
                { x: -0.1, y: 0.5, z: 0.05, w: 0.6, h: 0.45, d: 0.55, color: "#d9a066" },
                { x: 0.05, y: 0.95, z: 0.0, w: 0.4, h: h - 0.95, d: 0.4, color: "#c98a3e" }]
    case "plant":
        return [{ x: 0, y: 0, z: 0, w: 0.4, h: 0.35, d: 0.4, color: a },
                { x: 0, y: 0.35, z: 0, w: 0.55, h: h - 0.35, d: 0.55, color: c },
                { x: 0.2, y: 0.55, z: 0.15, w: 0.3, h: 0.3, d: 0.3, color: "#3f8a2c" }]
    case "person":
        return [{ x: 0, y: 0, z: 0, w: 0.34, h: h * 0.45, d: 0.22, color: "#23262e" },
                { x: 0, y: h * 0.45, z: 0, w: 0.42, h: h * 0.33, d: 0.26, color: c },
                { x: 0, y: h * 0.78, z: 0, w: 0.26, h: h * 0.22, d: 0.26, color: "#f1c7a8" },
                { x: 0, y: h * 0.95, z: 0, w: 0.28, h: h * 0.08, d: 0.28, color: a }]
    default:
        return [{ x: 0, y: 0, z: 0, w: 0.6, h: h, d: 0.6, color: c }]
    }
}
