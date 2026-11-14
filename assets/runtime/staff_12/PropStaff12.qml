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
        id: qtmesh_gen3d_1_1794634704383_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794634704383_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/qtmesh_gen3d_1_1794634704383_diffuse.png
        // Skipped property: source, reason: Failed to find texture at /Users/fernandotonon/it-operation-td/assets/runtime/staff_12/.stage/qtmesh_gen3d_1_1794634704383_diffuse.png
    }
    Texture {
        id: qtmesh_gen3d_1_1794634704383_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794634704383_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/qtmesh_gen3d_1_1794634704383_roughness.png
        // Skipped property: source, reason: Failed to find texture at /Users/fernandotonon/it-operation-td/assets/runtime/staff_12/.stage/qtmesh_gen3d_1_1794634704383_roughness.png
    }
    Texture {
        id: qtmesh_gen3d_1_1794634704383_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794634704383_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/qtmesh_gen3d_1_1794634704383_normal.png
        // Skipped property: source, reason: Failed to find texture at /Users/fernandotonon/it-operation-td/assets/runtime/staff_12/.stage/qtmesh_gen3d_1_1794634704383_normal.png
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794634704383_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794634704383_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794634704383_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794634704383_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794634704383_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794634704383_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_12_trim,
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
            joint_19,
            joint_22,
            joint_32,
            joint_35,
            joint_38,
            joint_41,
            leftLeg,
            rightLeg,
            neck,
            joint_13,
            joint_16,
            joint_20,
            joint_23,
            joint_33,
            joint_36,
            joint_39,
            joint_42,
            leftFoot,
            rightFoot,
            joint_11,
            joint_30,
            head,
            joint_14,
            joint_17,
            joint_21,
            joint_24,
            joint_34,
            joint_37,
            joint_40,
            joint_43,
            joint_47,
            joint_51,
            joint_12,
            joint_31
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00369172, 0, 1, 0, -0.0071669, 0, 0, 1, 0.0278817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00369172, 0, 1, 0, -0.0502245, 0, 0, 1, 0.0239674, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00369172, 0, 1, 0, -0.101111, 0, 0, 1, 0.020053, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00369172, 0, 1, 0, -0.159826, 0, 0, 1, 0.0161387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0276229, 0, 1, 0, -0.210712, 0, 0, 1, 0.0122244, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0902522, 0, 1, 0, -0.183312, 0, 0, 1, 0.0122244, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.172453, 0, 1, 0, -0.16374, 0, 0, 1, 0.0122244, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.289883, 0, 1, 0, -0.16374, 0, 0, 1, 0.0122244, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0350064, 0, 1, 0, -0.210712, 0, 0, 1, 0.0122244, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0976356, 0, 1, 0, -0.183312, 0, 0, 1, 0.0122244, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.179837, 0, 1, 0, -0.16374, 0, 0, 1, 0.0122244, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.297266, 0, 1, 0, -0.16374, 0, 0, 1, 0.0122244, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0471946, 0, 1, 0, 0.0163191, 0, 0, 1, 0.0239674, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.054578, 0, 1, 0, 0.0163191, 0, 0, 1, 0.0278817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.329026, 0, 1, 0, -0.155911, 0, 0, 1, 0.0161387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.325112, 0, 1, 0, -0.144168, 0, 0, 1, 0.020053, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.332495, 0, 1, 0, -0.179397, 0, 0, 1, 0.00439572, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.33641, 0, 1, 0, -0.167654, 0, 0, 1, 0.00831005, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.33641, 0, 1, 0, -0.155911, 0, 0, 1, 0.0161387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.332495, 0, 1, 0, -0.144168, 0, 0, 1, 0.020053, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0550232, 0, 1, 0, 0.231607, 0, 0, 1, 0.031796, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0624067, 0, 1, 0, 0.231607, 0, 0, 1, 0.031796, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00369172, 0, 1, 0, -0.222455, 0, 0, 1, 0.0122244, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.325112, 0, 1, 0, -0.179397, 0, 0, 1, 0.00439572, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.329026, 0, 1, 0, -0.167654, 0, 0, 1, 0.00831005, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.340769, 0, 1, 0, -0.159826, 0, 0, 1, 0.0161387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.336855, 0, 1, 0, -0.144168, 0, 0, 1, 0.020053, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.344238, 0, 1, 0, -0.183312, 0, 0, 1, 0.00439572, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.348153, 0, 1, 0, -0.171569, 0, 0, 1, 0.00831005, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.348153, 0, 1, 0, -0.159826, 0, 0, 1, 0.0161387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.344238, 0, 1, 0, -0.144168, 0, 0, 1, 0.020053, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0706805, 0, 1, 0, 0.442981, 0, 0, 1, 0.0278817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.078064, 0, 1, 0, 0.442981, 0, 0, 1, 0.0278817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.309455, 0, 1, 0, -0.187226, 0, 0, 1, 0.0161387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.316838, 0, 1, 0, -0.187226, 0, 0, 1, 0.0161387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00369172, 0, 1, 0, -0.277256, 0, 0, 1, 0.0122244, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.336855, 0, 1, 0, -0.183312, 0, 0, 1, 0.00439572, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.340769, 0, 1, 0, -0.171569, 0, 0, 1, 0.00831005, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.352512, 0, 1, 0, -0.16374, 0, 0, 1, 0.0161387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.348598, 0, 1, 0, -0.144168, 0, 0, 1, 0.020053, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.355981, 0, 1, 0, -0.187226, 0, 0, 1, 0.00439572, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.359896, 0, 1, 0, -0.175483, 0, 0, 1, 0.00831005, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.359896, 0, 1, 0, -0.16374, 0, 0, 1, 0.0161387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.355981, 0, 1, 0, -0.144168, 0, 0, 1, 0.020053, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0785092, 0, 1, 0, 0.486039, 0, 0, 1, 0.0944253, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0858926, 0, 1, 0, 0.486039, 0, 0, 1, 0.0944253, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.313369, 0, 1, 0, -0.202883, 0, 0, 1, 0.0161387, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.320752, 0, 1, 0, -0.202883, 0, 0, 1, 0.0161387, 0, 0, 0, 1)
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
                id: staff_12_trim
                objectName: "staff_12_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00369172, 0.0071669, -0.0278817)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0430576, 0.00391433)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0508863, 0.00391433)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0587149, 0.00391433)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0626293, 0.00391433)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0548006, 0)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0313146, 0.0508863, 0.00391433)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0626293, -0.0274003, 0)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0822009, -0.0195716, 0)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.11743, 0, 0)
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.035229, 0.0156573, 0.00782866)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.011743, 0.00391433, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.011743, 0.00391434, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0391433, 0.00391434, 0.00391433)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.011743, 0.00391433, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.011743, 0.00391433, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0391433, -0.00782865, -0.00391433)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.011743, 0.00391433, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.011743, 0.00391433, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.035229, -0.0195716, -0.00782866)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.011743, 0, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.011743, 0, 0)
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
                                    position: Qt.vector3d(0.0313146, 0.0508863, 0.00391433)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0626293, -0.0274003, 0)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0822009, -0.0195716, 0)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.11743, 0, 0)
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.035229, 0.0156573, 0.00782866)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.011743, 0.00391433, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.011743, 0.00391434, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0391433, 0.00391434, 0.00391433)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.011743, 0.00391433, 0)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.011743, 0.00391433, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0391433, -0.00782865, -0.00391433)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.011743, 0.00391433, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.011743, 0.00391433, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.035229, -0.0195716, -0.00782866)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.011743, 0, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.011743, 0, 0)
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
                        position: Qt.vector3d(-0.0508863, -0.023486, 0.00391433)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.00782866, -0.215288, -0.00782866)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0156573, -0.211374, 0.00391433)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.00782865, -0.0430576, -0.0665436)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0508863, -0.023486, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.00782866, -0.215288, -0.00391433)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0156573, -0.211374, 0.00391433)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.00782866, -0.0430576, -0.0665436)
                                }
                            }
                        }
                    }
                }
            }
        }
        Node {
            id: joint_10
            objectName: "joint_10"
            position: Qt.vector3d(-0.301626, 0.175483, -0.0161387)
            Node {
                id: joint_11
                objectName: "joint_11"
                position: Qt.vector3d(-0.00782868, 0.011743, 0)
                Node {
                    id: joint_12
                    objectName: "joint_12"
                    position: Qt.vector3d(-0.00391433, 0.0156573, 0)
                }
            }
        }
        Node {
            id: joint_29
            objectName: "joint_29"
            position: Qt.vector3d(0.309009, 0.175483, -0.0161387)
            Node {
                id: joint_30
                objectName: "joint_30"
                position: Qt.vector3d(0.00782865, 0.011743, 0)
                Node {
                    id: joint_31
                    objectName: "joint_31"
                    position: Qt.vector3d(0.00391433, 0.0156573, 0)
                }
            }
        }
        Model {
            id: typing_mesh
            objectName: "Typing_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1794634704383_mesh_mat_material
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
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_0.qad"
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
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_0.qad"
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
            target: rightShoulder
            property: "rotation"
            keyframeSource: "animations/rightShoulder_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_0.qad"
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
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_0.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_0.qad"
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
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_1.qad"
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
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_1.qad"
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
            target: rightShoulder
            property: "rotation"
            keyframeSource: "animations/rightShoulder_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_1.qad"
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
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_1.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_1.qad"
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
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_2.qad"
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
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_2.qad"
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
            target: rightShoulder
            property: "rotation"
            keyframeSource: "animations/rightShoulder_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_2.qad"
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
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_2.qad"
        }
    }
}
