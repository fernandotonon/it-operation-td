import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    // --- game runtime API (added by scripts/import-runtime.py) ---
    property string clip: "Idle"
    readonly property var clips: ["Cheer", "Idle", "Typing"]
    signal clipFinished(string name)

    // Resources
    Texture {
        id: qtmesh_gen3d_1_1794642796015_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794642796015_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794642796015_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794642796015_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794642796015_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794642796015_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794642796015_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794642796015_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794642796015_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794642796015_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794642796015_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794642796015_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794642796015_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794642796015_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794642796015_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_47_trim,
            hips,
            spine,
            spine1,
            spine2,
            leftShoulder,
            leftArm,
            leftForeArm,
            leftHand,
            rightShoulder,
            rightArm,
            rightForeArm,
            rightHand,
            leftUpLeg,
            rightUpLeg,
            joint_10,
            joint_13,
            joint_16,
            joint_19,
            joint_22,
            joint_29,
            joint_32,
            joint_35,
            joint_38,
            joint_41,
            leftLeg,
            rightLeg,
            neck,
            joint_11,
            joint_14,
            joint_17,
            joint_20,
            joint_23,
            joint_30,
            joint_33,
            joint_36,
            joint_39,
            joint_42,
            leftFoot,
            rightFoot,
            head,
            joint_12,
            joint_15,
            joint_18,
            joint_21,
            joint_24,
            joint_31,
            joint_34,
            joint_37,
            joint_40,
            joint_43,
            joint_47,
            joint_51
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00186725, 0, 1, 0, 0.0439801, 0, 0, 1, -0.00593975, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00186725, 0, 1, 0, -0.00296834, 0, 0, 1, -0.00985212, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00186725, 0, 1, 0, -0.0577415, 0, 0, 1, -0.0137645, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00186725, 0, 1, 0, -0.120339, 0, 0, 1, -0.0215892, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0333441, 0, 1, 0, -0.179025, 0, 0, 1, -0.029414, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.103767, 0, 1, 0, -0.163375, 0, 0, 1, -0.0372387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.185926, 0, 1, 0, -0.155551, 0, 0, 1, -0.0568005, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.299385, 0, 1, 0, -0.151638, 0, 0, 1, -0.0802747, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0370786, 0, 1, 0, -0.179025, 0, 0, 1, -0.0255016, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.107501, 0, 1, 0, -0.163375, 0, 0, 1, -0.0372387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.189661, 0, 1, 0, -0.155551, 0, 0, 1, -0.0568005, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.30312, 0, 1, 0, -0.151638, 0, 0, 1, -0.0802747, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0489935, 0, 1, 0, 0.0713666, 0, 0, 1, -0.00593975, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.052728, 0, 1, 0, 0.0713666, 0, 0, 1, -0.00593975, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.311122, 0, 1, 0, -0.167288, 0, 0, 1, -0.0841871, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342421, 0, 1, 0, -0.175113, 0, 0, 1, -0.107661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.346333, 0, 1, 0, -0.163375, 0, 0, 1, -0.107661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.346333, 0, 1, 0, -0.147726, 0, 0, 1, -0.107661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342421, 0, 1, 0, -0.135989, 0, 0, 1, -0.103749, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.314857, 0, 1, 0, -0.167288, 0, 0, 1, -0.0841871, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346156, 0, 1, 0, -0.175113, 0, 0, 1, -0.107661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350068, 0, 1, 0, -0.163375, 0, 0, 1, -0.107661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350068, 0, 1, 0, -0.147726, 0, 0, 1, -0.107661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346156, 0, 1, 0, -0.135989, 0, 0, 1, -0.103749, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0607306, 0, 1, 0, 0.266985, 0, 0, 1, -0.0215892, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0644651, 0, 1, 0, 0.266985, 0, 0, 1, -0.0215892, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00186725, 0, 1, 0, -0.190762, 0, 0, 1, -0.0255016, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.322859, 0, 1, 0, -0.182937, 0, 0, 1, -0.0880995, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354158, 0, 1, 0, -0.179025, 0, 0, 1, -0.111574, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358071, 0, 1, 0, -0.163375, 0, 0, 1, -0.111574, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358071, 0, 1, 0, -0.147726, 0, 0, 1, -0.111574, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354158, 0, 1, 0, -0.135989, 0, 0, 1, -0.107661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.326594, 0, 1, 0, -0.182937, 0, 0, 1, -0.0880995, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.357893, 0, 1, 0, -0.179025, 0, 0, 1, -0.111574, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.361805, 0, 1, 0, -0.163375, 0, 0, 1, -0.111574, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.361805, 0, 1, 0, -0.147726, 0, 0, 1, -0.111574, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.357893, 0, 1, 0, -0.135989, 0, 0, 1, -0.107661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0724677, 0, 1, 0, 0.450866, 0, 0, 1, -0.0333263, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0762022, 0, 1, 0, 0.450866, 0, 0, 1, -0.029414, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00186725, 0, 1, 0, -0.25336, 0, 0, 1, -0.00985212, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.330684, 0, 1, 0, -0.202499, 0, 0, 1, -0.0880995, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.365895, 0, 1, 0, -0.182937, 0, 0, 1, -0.115486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.369808, 0, 1, 0, -0.163375, 0, 0, 1, -0.115486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.369808, 0, 1, 0, -0.147726, 0, 0, 1, -0.115486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.365895, 0, 1, 0, -0.135989, 0, 0, 1, -0.111574, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.334418, 0, 1, 0, -0.202499, 0, 0, 1, -0.0880995, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.36963, 0, 1, 0, -0.182937, 0, 0, 1, -0.115486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.373542, 0, 1, 0, -0.163375, 0, 0, 1, -0.115486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.373542, 0, 1, 0, -0.147726, 0, 0, 1, -0.115486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.36963, 0, 1, 0, -0.135989, 0, 0, 1, -0.111574, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0881172, 0, 1, 0, 0.493902, 0, 0, 1, 0.044921, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0918517, 0, 1, 0, 0.493902, 0, 0, 1, 0.044921, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: typing
        objectName: "Typing"
        Node {
            id: skeleton
            objectName: "skeleton"
            Node {
                id: staff_47_trim
                objectName: "staff_47_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00186725, -0.0439801, 0.00593975)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0469484, 0.00391237)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0547731, 0.00391237)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0625979, 0.00782473)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0704226, 0.00391237)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0625979, -0.0156495)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0352113, 0.0586855, 0.00782474)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0704226, -0.0156495, 0.00782473)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0821597, -0.00782473, 0.0195618)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.113459, -0.00391237, 0.0234742)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0117371, 0.0156495, 0.00391237)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0117371, 0.0156495, 0.00391237)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00782475, 0.0195618, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.043036, 0.0234742, 0.0273866)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0117371, 0.00391237, 0.00391237)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0117371, 0.00391236, 0.00391237)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0469484, 0.0117371, 0.0273866)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0117371, 0, 0.00391237)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0117371, 0, 0.00391237)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0469484, -0.00391236, 0.0273866)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0117371, 0, 0.00391237)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0117371, 0, 0.00391237)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.043036, -0.0156495, 0.0234742)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0117371, 0, 0.00391237)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0117371, 0, 0.00391237)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                Node {
                                    id: rightShoulder
                                    objectName: "RightShoulder"
                                    position: Qt.vector3d(0.0352113, 0.0586855, 0.00391237)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0704226, -0.0156495, 0.0117371)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0821597, -0.00782473, 0.0195618)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.113459, -0.00391237, 0.0234742)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0117371, 0.0156495, 0.00391237)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0117371, 0.0156495, 0.00391237)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00782475, 0.0195618, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.043036, 0.0234742, 0.0273866)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0117371, 0.00391237, 0.00391237)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0117371, 0.00391236, 0.00391237)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0469484, 0.0117371, 0.0273866)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0117371, 0, 0.00391237)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0117371, 0, 0.00391237)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0469484, -0.00391236, 0.0273866)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0117371, 0, 0.00391237)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0117371, 0, 0.00391237)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.043036, -0.0156495, 0.0234742)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0117371, 0, 0.00391237)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0117371, 0, 0.00391237)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Node {
                        id: leftUpLeg
                        objectName: "LeftUpLeg"
                        position: Qt.vector3d(-0.0508608, -0.0273866, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0117371, -0.195618, 0.0156495)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0117371, -0.183881, 0.0117371)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0156495, -0.043036, -0.0782473)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0508608, -0.0273866, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0117371, -0.195618, 0.0156495)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0117371, -0.183881, 0.00782474)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0156495, -0.043036, -0.074335)
                                }
                            }
                        }
                    }
                }
            }
        }
        Model {
            id: typing_mesh
            objectName: "Typing_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1794642796015_mesh_mat_material
            ]
        }
    }

    // Animations:
    Timeline {
        id: cheer_timeline
        objectName: "Cheer"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 3967
        currentFrame: 0
        enabled: node.clip === "Cheer"
        animations: TimelineAnimation {
            duration: 3967
            from: 0
            to: 3967
            running: node.clip === "Cheer"
            loops: 1
            onFinished: Qt.callLater(function() { if (node) node.clipFinished("Cheer") })
        }
        KeyframeGroup {
            target: joint_43
            property: "rotation"
            keyframeSource: "animations/joint_43_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_40
            property: "rotation"
            keyframeSource: "animations/joint_40_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_37
            property: "rotation"
            keyframeSource: "animations/joint_37_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            keyframeSource: "animations/joint_34_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            keyframeSource: "animations/joint_31_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_24
            property: "rotation"
            keyframeSource: "animations/joint_24_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_21
            property: "rotation"
            keyframeSource: "animations/joint_21_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_18
            property: "rotation"
            keyframeSource: "animations/joint_18_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_15
            property: "rotation"
            keyframeSource: "animations/joint_15_rotation_0.qad"
        }
        KeyframeGroup {
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_42
            property: "rotation"
            keyframeSource: "animations/joint_42_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_39
            property: "rotation"
            keyframeSource: "animations/joint_39_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            keyframeSource: "animations/joint_36_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_33
            property: "rotation"
            keyframeSource: "animations/joint_33_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.953902, 0.26333, -0.130073, 0.0617207)
            }
        }
        KeyframeGroup {
            target: joint_23
            property: "rotation"
            keyframeSource: "animations/joint_23_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_20
            property: "rotation"
            keyframeSource: "animations/joint_20_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_17
            property: "rotation"
            keyframeSource: "animations/joint_17_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            keyframeSource: "animations/joint_14_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightFoot
            property: "rotation"
            keyframeSource: "animations/rightFoot_rotation_0.qad"
        }
        KeyframeGroup {
            target: neck
            property: "rotation"
            keyframeSource: "animations/neck_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_12
            property: "rotation"
            keyframeSource: "animations/joint_12_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_41
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.7446, 0.329776, -0.299337, 0.497208)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.7446, 0.329776, -0.299337, 0.497208)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.7446, 0.329776, -0.299337, 0.497208)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.80214, 0.391831, -0.235953, 0.383882)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.74368, 0.334138, 0.299227, -0.495737)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.800963, 0.396007, 0.235291, -0.382458)
            }
        }
        KeyframeGroup {
            target: hips
            property: "position"
            keyframeSource: "animations/hips_position_0.qad"
        }
        KeyframeGroup {
            target: hips
            property: "rotation"
            keyframeSource: "animations/hips_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.939002, 0.340574, -0.0381345, 0.028822)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.953827, 0.263697, 0.130009, -0.061449)
            }
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.940172, 0.337596, 0.036327, -0.0280181)
            }
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_19
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.743679, 0.334137, 0.299228, -0.495738)
            }
        }
        KeyframeGroup {
            target: rightHand
            property: "rotation"
            keyframeSource: "animations/rightHand_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightForeArm
            property: "rotation"
            keyframeSource: "animations/rightForeArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightArm
            property: "rotation"
            keyframeSource: "animations/rightArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.743679, 0.334137, 0.299228, -0.495738)
            }
        }
        KeyframeGroup {
            target: rightShoulder
            property: "rotation"
            keyframeSource: "animations/rightShoulder_rotation_0.qad"
        }
        KeyframeGroup {
            target: spine2
            property: "rotation"
            keyframeSource: "animations/spine2_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_0.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_0.qad"
        }
    }
    Timeline {
        id: idle_timeline
        objectName: "Idle"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 4000
        currentFrame: 0
        enabled: node.clip === "Idle"
        animations: TimelineAnimation {
            duration: 4000
            from: 0
            to: 4000
            running: node.clip === "Idle"
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: joint_43
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.985907, 0.0860194, -0.0299363, -0.14033)
            }
        }
        KeyframeGroup {
            target: joint_40
            property: "rotation"
            keyframeSource: "animations/joint_40_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_37
            property: "rotation"
            keyframeSource: "animations/joint_37_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.0601341, -0.0157574, -0.0935857)
            }
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            keyframeSource: "animations/joint_31_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0852606, 0.0288098, 0.138042)
            }
        }
        KeyframeGroup {
            target: joint_21
            property: "rotation"
            keyframeSource: "animations/joint_21_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_18
            property: "rotation"
            keyframeSource: "animations/joint_18_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_15
            property: "rotation"
            keyframeSource: "animations/joint_15_rotation_1.qad"
        }
        KeyframeGroup {
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_42
            property: "rotation"
            keyframeSource: "animations/joint_42_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_39
            property: "rotation"
            keyframeSource: "animations/joint_39_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            keyframeSource: "animations/joint_36_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_33
            property: "rotation"
            keyframeSource: "animations/joint_33_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.953229, 0.251752, -0.149258, -0.075482)
            }
        }
        KeyframeGroup {
            target: joint_23
            property: "rotation"
            keyframeSource: "animations/joint_23_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_20
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.955732, 0.0857961, -0.0223468, 0.280563)
            }
        }
        KeyframeGroup {
            target: joint_17
            property: "rotation"
            keyframeSource: "animations/joint_17_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.983293, 0.0515162, -0.0190016, 0.17355)
            }
        }
        KeyframeGroup {
            target: rightFoot
            property: "rotation"
            keyframeSource: "animations/rightFoot_rotation_1.qad"
        }
        KeyframeGroup {
            target: neck
            property: "rotation"
            keyframeSource: "animations/neck_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_12
            property: "rotation"
            keyframeSource: "animations/joint_12_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_41
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.830916, 0.370708, -0.102336, 0.402096)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.812587, 0.392477, -0.191257, 0.386116)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.797796, 0.386885, -0.234884, 0.398336)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.806598, 0.435131, -0.243291, 0.3176)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.807176, 0.422938, 0.210286, -0.354076)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.813512, 0.460854, 0.217939, -0.279847)
            }
        }
        KeyframeGroup {
            target: hips
            property: "position"
            keyframeSource: "animations/hips_position_1.qad"
        }
        KeyframeGroup {
            target: hips
            property: "rotation"
            keyframeSource: "animations/hips_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.902604, 0.42078, -0.0497826, 0.0759758)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.956368, 0.24241, 0.156092, 0.0472509)
            }
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.920138, 0.387294, 0.0535528, -0.0219371)
            }
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_19
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.789688, 0.390733, 0.247996, -0.402764)
            }
        }
        KeyframeGroup {
            target: rightHand
            property: "rotation"
            keyframeSource: "animations/rightHand_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightForeArm
            property: "rotation"
            keyframeSource: "animations/rightForeArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightArm
            property: "rotation"
            keyframeSource: "animations/rightArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.81518, 0.383243, 0.199738, -0.385631)
            }
        }
        KeyframeGroup {
            target: rightShoulder
            property: "rotation"
            keyframeSource: "animations/rightShoulder_rotation_1.qad"
        }
        KeyframeGroup {
            target: spine2
            property: "rotation"
            keyframeSource: "animations/spine2_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_1.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_1.qad"
        }
    }
    Timeline {
        id: typing_timeline
        objectName: "Typing"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 6100
        currentFrame: 0
        enabled: node.clip === "Typing"
        animations: TimelineAnimation {
            duration: 6100
            from: 0
            to: 6100
            running: node.clip === "Typing"
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: joint_43
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.985907, 0.0860193, -0.0299362, -0.14033)
            }
        }
        KeyframeGroup {
            target: joint_40
            property: "rotation"
            keyframeSource: "animations/joint_40_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_37
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.985343, 0.0593003, 0.0105819, -0.159597)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.060134, -0.0157573, -0.0935859)
            }
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            keyframeSource: "animations/joint_31_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0852606, 0.0288098, 0.138042)
            }
        }
        KeyframeGroup {
            target: joint_21
            property: "rotation"
            keyframeSource: "animations/joint_21_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_18
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.97832, 0.0725447, -0.012906, 0.193547)
            }
        }
        KeyframeGroup {
            target: joint_15
            property: "rotation"
            keyframeSource: "animations/joint_15_rotation_2.qad"
        }
        KeyframeGroup {
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_42
            property: "rotation"
            keyframeSource: "animations/joint_42_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_39
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.98659, 0.0515191, 0.00987075, -0.154557)
            }
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            keyframeSource: "animations/joint_36_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_33
            property: "rotation"
            keyframeSource: "animations/joint_33_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.953229, 0.251752, -0.149258, -0.0754819)
            }
        }
        KeyframeGroup {
            target: joint_23
            property: "rotation"
            keyframeSource: "animations/joint_23_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_20
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.955732, 0.0857961, -0.0223468, 0.280563)
            }
        }
        KeyframeGroup {
            target: joint_17
            property: "rotation"
            keyframeSource: "animations/joint_17_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.983293, 0.0515162, -0.0190016, 0.17355)
            }
        }
        KeyframeGroup {
            target: rightFoot
            property: "rotation"
            keyframeSource: "animations/rightFoot_rotation_2.qad"
        }
        KeyframeGroup {
            target: neck
            property: "rotation"
            keyframeSource: "animations/neck_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_12
            property: "rotation"
            keyframeSource: "animations/joint_12_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_41
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.830916, 0.370708, -0.102336, 0.402096)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.812587, 0.392477, -0.191257, 0.386116)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.797796, 0.386885, -0.234884, 0.398336)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.806598, 0.435131, -0.243291, 0.3176)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.807176, 0.422938, 0.210286, -0.354076)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.813512, 0.460854, 0.217939, -0.279847)
            }
        }
        KeyframeGroup {
            target: hips
            property: "position"
            keyframeSource: "animations/hips_position_2.qad"
        }
        KeyframeGroup {
            target: hips
            property: "rotation"
            keyframeSource: "animations/hips_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.902604, 0.42078, -0.0497825, 0.0759758)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.956368, 0.24241, 0.156092, 0.047251)
            }
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.920138, 0.387294, 0.0535529, -0.0219371)
            }
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_19
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.789688, 0.390733, 0.247996, -0.402764)
            }
        }
        KeyframeGroup {
            target: rightHand
            property: "rotation"
            keyframeSource: "animations/rightHand_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightForeArm
            property: "rotation"
            keyframeSource: "animations/rightForeArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightArm
            property: "rotation"
            keyframeSource: "animations/rightArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.81518, 0.383243, 0.199738, -0.385631)
            }
        }
        KeyframeGroup {
            target: rightShoulder
            property: "rotation"
            keyframeSource: "animations/rightShoulder_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine2
            property: "rotation"
            keyframeSource: "animations/spine2_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_2.qad"
        }
    }
}
