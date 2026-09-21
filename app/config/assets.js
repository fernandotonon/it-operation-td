// Asset manifest. Gameplay refers to ids only; this table says how each id looks.
//   model         Qt Quick 3D QML produced by balsam from the QtMeshEditor GLB (scripts/import-runtime.py)
//   representation "model" | "placeholder" - what the game shows for this id right now
//   height        metres the model should stand tall in the scene (TRELLIS.2 output is a ~1 unit box)
//   footOffset    model units from origin down to the base (lifts it to y = 0), unitHeight = model bbox height
//   rotation      yaw degrees so the model faces the camera (+Z) at rest
//   placeholder   what to draw when no model is available: toon boxes { shape, color, accent }
//   status        "generated" | "pending" | "placeholder"
// scripts/update-asset-manifest.py fills in model/unitHeight/footOffset/status after an import.
.pragma library

var assets = {
    server_rack:    { unitDepth: 0.38, unitWidth: 0.415, footOffset: 0.511, unitHeight: 1.023, height: 2.0,  rotation: 180,   model: "../assets/runtime/server_rack/PropServerRack.qml", representation: "model", status: "generated", placeholder: { shape: "rack", color: "#2b2f3a", accent: "#3fd07a" } },
    switch:         { unitDepth: 0.794, unitWidth: 1.024, footOffset: 0.18, unitHeight: 0.361, height: 0.3, rotation: 180,   model: "../assets/runtime/switch/PropSwitch.qml", representation: "model", status: "generated", placeholder: { shape: "flat", color: "#2b3140", accent: "#22b8e6" } },
    ups:            { unitDepth: 1.017, unitWidth: 0.435, footOffset: 0.381, unitHeight: 0.762, height: 0.9,  rotation: 180,   model: "../assets/runtime/ups/PropUps.qml", representation: "model", status: "generated", placeholder: { shape: "tower", color: "#23262e", accent: "#f2c02f" } },
    laptop:         { unitDepth: 0.912, unitWidth: 1.024, footOffset: 0.358, unitHeight: 0.717, height: 0.5,  rotation: 180,   model: "../assets/runtime/laptop/PropLaptop.qml", representation: "model", status: "generated", placeholder: { shape: "laptop", color: "#3a3f4a", accent: "#2f7ff2" } },
    monitor:        { unitDepth: 0.36, unitWidth: 1.024, footOffset: 0.399, unitHeight: 0.801, height: 0.8,  rotation: 180,   model: "../assets/runtime/monitor/PropMonitor.qml", representation: "model", status: "generated", placeholder: { shape: "monitor", color: "#2b2f3a", accent: "#3fd07a" } },
    server_2u:      { unitDepth: 0.853, unitWidth: 1.02, footOffset: 0.08, unitHeight: 0.161, height: 0.24,  rotation: 180,   model: "../assets/runtime/server_2u/PropServer2u.qml", representation: "model", status: "generated", placeholder: { shape: "flat", color: "#2b2f3a", accent: "#f2662f" } },
    desk:           { unitDepth: 0.657, unitWidth: 1.024, footOffset: 0.213, unitHeight: 0.426, height: 0.75, rotation: 180,   model: "../assets/runtime/desk/PropDesk.qml", representation: "model", status: "generated", placeholder: { shape: "desk", color: "#d9a066", accent: "#3a3f4a" } },
    chair:          { unitDepth: 0.642, unitWidth: 0.682, footOffset: 0.511, unitHeight: 1.021, height: 1.0,  rotation: 180,   model: "../assets/runtime/chair/PropChair.qml", representation: "model", status: "generated", placeholder: { shape: "box", color: "#2f5fd6" } },
    boxes:          { unitDepth: 0.643, unitWidth: 0.825, footOffset: 0.511, unitHeight: 1.022, height: 1.2,  rotation: 180,   model: "../assets/runtime/boxes/PropBoxes.qml", representation: "model", status: "generated", placeholder: { shape: "boxes", color: "#c98a3e" } },
    plant:          { unitDepth: 1.016, unitWidth: 0.905, footOffset: 0.511, unitHeight: 1.022, height: 1.0,  rotation: 180,   model: "../assets/runtime/plant/PropPlant.qml", representation: "model", status: "generated", placeholder: { shape: "plant", color: "#4f9a3c", accent: "#e9e2d0" } },
    toolbox:        { unitDepth: 0.763, unitWidth: 1.022, footOffset: 0.478, unitHeight: 0.957, height: 0.4,  rotation: 180,   model: "../assets/runtime/toolbox/PropToolbox.qml", representation: "model", status: "generated", placeholder: { shape: "box", color: "#23262e", accent: "#f2c02f" } },
    water_cooler:   { unitDepth: 0.347, unitWidth: 0.337, footOffset: 0.512, unitHeight: 1.024, height: 1.3,  rotation: 180,   model: "../assets/runtime/water_cooler/PropWaterCooler.qml", representation: "model", status: "generated", placeholder: { shape: "tower", color: "#e9eef5", accent: "#5ab3f0" } },
    printer:        { unitDepth: 0.78, unitWidth: 1.023, footOffset: 0.303, unitHeight: 0.606, height: 0.5,  rotation: 180,   model: "../assets/runtime/printer/PropPrinter.qml", representation: "model", status: "generated", placeholder: { shape: "box", color: "#e9eef5" } },
    coffee_machine: { unitDepth: 1.019, unitWidth: 0.632, footOffset: 0.412, unitHeight: 0.825, height: 0.6,  rotation: 180,   model: "../assets/runtime/coffee_machine/PropCoffeeMachine.qml", representation: "model", status: "generated", placeholder: { shape: "box", color: "#23262e" } },
    extinguisher:   { unitDepth: 0.555, unitWidth: 0.344, footOffset: 0.508, unitHeight: 1.02, height: 0.7,  rotation: 180,   model: "../assets/runtime/extinguisher/PropExtinguisher.qml", representation: "model", status: "generated", placeholder: { shape: "tower", color: "#e63946" } },
    patch_panel:    { unitDepth: 0.356, unitWidth: 1.023, footOffset: 0.239, unitHeight: 0.478, height: 0.5,  rotation: 180,   model: "../assets/runtime/patch_panel/PropPatchPanel.qml", representation: "model", status: "generated", placeholder: { shape: "flat", color: "#2b2f3a", accent: "#2f7ff2" } },
    tech_helmet:    { unitDepth: 0.312, unitWidth: 0.749, footOffset: 0.511, unitHeight: 1.023, height: 1.35, rotation: 180,   model: "../assets/runtime/tech_helmet/PropTechHelmet.qml", representation: "model", status: "generated", placeholder: { shape: "person", color: "#5a8fd6", accent: "#f2c02f" } },
    tech_headset:   { unitDepth: 0.306, unitWidth: 0.88, footOffset: 0.511, unitHeight: 1.021, height: 1.35, rotation: 180,   model: "../assets/runtime/tech_headset/PropTechHeadset.qml", representation: "model", status: "generated", placeholder: { shape: "person", color: "#1f2f5a", accent: "#2b2b2b" } },
    tech_polo:      { unitDepth: 0.315, unitWidth: 0.917, footOffset: 0.511, unitHeight: 1.022, height: 1.35, rotation: 180,   model: "../assets/runtime/tech_polo/PropTechPolo.qml", representation: "model", status: "generated", placeholder: { shape: "person", color: "#2f5fd6", accent: "#2b2b2b" } }
}
function get(id) { return assets[id] || null }
