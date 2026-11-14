import QtQuick
import QtQuick3D

Node {
    id: node
    // --- game runtime API (added by scripts/import-runtime.py) ---
    property string clip: "Idle"
    readonly property var clips: []
    signal clipFinished(string name)

    // Resources
    Texture {
        id: stealth_qr4_1794619040071_diffuse_map_png_texture
        objectName: "stealth_qr4_1794619040071_diffuse_map.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/stealth_qr4_1794619040071_diffuse_map.png"
    }
    Texture {
        id: stealth_qr4_1794619040071_roughness_png_texture
        objectName: "stealth_qr4_1794619040071_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/stealth_qr4_1794619040071_roughness.png"
    }
    Texture {
        id: stealth_qr4_1794619040071_normal_map_png_texture
        objectName: "stealth_qr4_1794619040071_normal_map.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/stealth_qr4_1794619040071_normal_map.jpg"
    }
    PrincipledMaterial {
        id: stealth_qr4_1794619040071_mat_material
        objectName: "stealth_qr4_1794619040071_mat"
        baseColorMap: stealth_qr4_1794619040071_diffuse_map_png_texture
        metalnessMap: stealth_qr4_1794619040071_roughness_png_texture
        roughnessMap: stealth_qr4_1794619040071_roughness_png_texture
        roughness: 1
        normalMap: stealth_qr4_1794619040071_normal_map_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Model {
        id: stealth
        objectName: "stealth"
        source: "meshes/meshes_0__mesh.mesh"
        materials: [
            stealth_qr4_1794619040071_mat_material
        ]
    }

    // Animations:
}
