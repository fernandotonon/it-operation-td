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
        id: qtmesh_gen3d_1_1789950314817_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1789950314817_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789950314817_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1789950314817_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1789950314817_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789950314817_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1789950314817_normal_png_texture
        objectName: "qtmesh_gen3d_1_1789950314817_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789950314817_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1789950314817_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1789950314817_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1789950314817_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1789950314817_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1789950314817_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1789950314817_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Model {
        id: qtmesh_gen3d_1_1789950314817
        objectName: "qtmesh_gen3d_1_1789950314817"
        source: "meshes/meshes_0__mesh.mesh"
        materials: [
            qtmesh_gen3d_1_1789950314817_mesh_mat_material
        ]
    }

    // Animations:
}
