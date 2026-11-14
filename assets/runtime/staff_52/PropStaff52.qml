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
        id: qtmesh_gen3d_1_1794643463676_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794643463676_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794643463676_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794643463676_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794643463676_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794643463676_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794643463676_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794643463676_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794643463676_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794643463676_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794643463676_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794643463676_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794643463676_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794643463676_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794643463676_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_52_trim,
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
            joint_16,
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
            joint_17,
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
            Qt.matrix4x4(1, 0, 0, -0.00222298, 0, 1, 0, 0.0409085, 0, 0, 1, 0.0318228, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00222298, 0, 1, 0, -0.010055, 0, 0, 1, 0.0279026, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00222298, 0, 1, 0, -0.0688591, 0, 0, 1, 0.0239823, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00222298, 0, 1, 0, -0.135504, 0, 0, 1, 0.020062, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0291392, 0, 1, 0, -0.194308, 0, 0, 1, 0.0161417, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0957838, 0, 1, 0, -0.170786, 0, 0, 1, 0.0161417, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.174189, 0, 1, 0, -0.155105, 0, 0, 1, 0.0161417, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.287877, 0, 1, 0, -0.151185, 0, 0, 1, 0.0083012, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0335851, 0, 1, 0, -0.194308, 0, 0, 1, 0.0161417, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.10023, 0, 1, 0, -0.170786, 0, 0, 1, 0.0161417, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.178635, 0, 1, 0, -0.155105, 0, 0, 1, 0.0161417, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.292323, 0, 1, 0, -0.151185, 0, 0, 1, 0.0083012, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0565811, 0, 1, 0, 0.0683504, 0, 0, 1, 0.0318228, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.061027, 0, 1, 0, 0.0683504, 0, 0, 1, 0.0318228, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.299638, 0, 1, 0, -0.159025, 0, 0, 1, 0.00438093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.32708, 0, 1, 0, -0.162946, 0, 0, 1, -0.00345961, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.32708, 0, 1, 0, -0.139424, 0, 0, 1, 0.000460661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.323159, 0, 1, 0, -0.127663, 0, 0, 1, 0.000460661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.304084, 0, 1, 0, -0.159025, 0, 0, 1, 0.00438093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331526, 0, 1, 0, -0.162946, 0, 0, 1, -0.00345961, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331526, 0, 1, 0, -0.151185, 0, 0, 1, 0.000460661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331526, 0, 1, 0, -0.139424, 0, 0, 1, 0.000460661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.327605, 0, 1, 0, -0.127663, 0, 0, 1, 0.00438093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0644216, 0, 1, 0, 0.268284, 0, 0, 1, 0.020062, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0688676, 0, 1, 0, 0.268284, 0, 0, 1, 0.020062, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00222298, 0, 1, 0, -0.206069, 0, 0, 1, 0.0161417, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.311399, 0, 1, 0, -0.166866, 0, 0, 1, 0.00438093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.338841, 0, 1, 0, -0.170786, 0, 0, 1, -0.00345961, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.32708, 0, 1, 0, -0.151185, 0, 0, 1, -0.00345961, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342761, 0, 1, 0, -0.139424, 0, 0, 1, -0.00345961, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.33492, 0, 1, 0, -0.123743, 0, 0, 1, 0.000460661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.315845, 0, 1, 0, -0.166866, 0, 0, 1, 0.00438093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.343286, 0, 1, 0, -0.170786, 0, 0, 1, -0.00345961, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.347207, 0, 1, 0, -0.155105, 0, 0, 1, -0.00345961, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.347207, 0, 1, 0, -0.139424, 0, 0, 1, 0.000460661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.339366, 0, 1, 0, -0.123743, 0, 0, 1, 0.00438093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0761824, 0, 1, 0, 0.440776, 0, 0, 1, 0.0161417, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0806284, 0, 1, 0, 0.440776, 0, 0, 1, 0.0161417, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00222298, 0, 1, 0, -0.264873, 0, 0, 1, 0.0122215, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.315319, 0, 1, 0, -0.186467, 0, 0, 1, 0.00438093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.350601, 0, 1, 0, -0.174706, 0, 0, 1, -0.00737988, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342761, 0, 1, 0, -0.155105, 0, 0, 1, -0.00345961, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354522, 0, 1, 0, -0.139424, 0, 0, 1, -0.00345961, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.346681, 0, 1, 0, -0.119823, 0, 0, 1, 0.000460661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.319765, 0, 1, 0, -0.186467, 0, 0, 1, 0.00438093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.355047, 0, 1, 0, -0.174706, 0, 0, 1, -0.00737988, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362888, 0, 1, 0, -0.159025, 0, 0, 1, -0.00737988, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358968, 0, 1, 0, -0.139424, 0, 0, 1, 0.000460661, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.351127, 0, 1, 0, -0.119823, 0, 0, 1, 0.00438093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.084023, 0, 1, 0, 0.487819, 0, 0, 1, 0.0867066, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0884689, 0, 1, 0, 0.487819, 0, 0, 1, 0.0827863, 0, 0, 0, 1)
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
                id: staff_52_trim
                objectName: "staff_52_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00222298, -0.0409085, -0.0318228)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0509635, 0.00392027)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0588041, 0.00392027)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0666446, 0.00392027)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0705649, 0.00392027)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0588041, 0.00392027)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0313622, 0.0588041, 0.00392027)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0666446, -0.0235216, 0)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0784054, -0.0156811, 0)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.113688, -0.00392027, 0.00784054)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0117608, 0.00784054, 0.00392027)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0117608, 0.00784054, 0)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00392026, 0.0196013, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0392027, 0.0117608, 0.0117608)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0117608, 0.00784054, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0117608, 0.00392027, 0.00392027)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0392027, 0, 0.0117608)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0156811, 0.00392027, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0156811, 0.00392027, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0392027, -0.0117608, 0.00784054)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0156811, 0, 0.00392027)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0117608, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0352824, -0.0235216, 0.00784054)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0117608, -0.00392027, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0117608, -0.00392027, 0)
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
                                    position: Qt.vector3d(0.0313622, 0.0588041, 0.00392027)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0666446, -0.0235216, 0)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0784054, -0.0156811, 0)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.113688, -0.00392027, 0.00784054)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0117608, 0.00784054, 0.00392027)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0117608, 0.00784054, 0)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00392029, 0.0196013, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0392027, 0.0117608, 0.0117608)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0117608, 0.00784054, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0117608, 0.00392027, 0.00392027)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0392027, 0, 0.00784054)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0156811, 0.00392027, 0.00392027)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0156811, 0.00392027, 0.00392027)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0392027, -0.0117608, 0.00784054)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0156811, 0, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0117608, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0352824, -0.0235216, 0.00392027)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0117608, -0.00392027, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0117608, -0.00392027, 0)
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
                        position: Qt.vector3d(-0.0588041, -0.0274419, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.00784054, -0.199934, 0.0117608)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0117608, -0.172492, 0.00392027)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.00784054, -0.0470432, -0.0705649)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0588041, -0.0274419, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.00784054, -0.199934, 0.0117608)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0117608, -0.172492, 0.00392027)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.00784054, -0.0470432, -0.0666446)
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
                qtmesh_gen3d_1_1794643463676_mesh_mat_material
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
            target: joint_17
            property: "rotation"
            keyframeSource: "animations/joint_17_rotation_0.qad"
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.978753, -0.0450647, 0.147715, 0.134877)
            }
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.951017, 0.213858, -0.0652229, -0.213488)
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
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.774175, 0.308298, 0.498456, -0.239053)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.978723, -0.0444723, -0.148003, -0.134974)
            }
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
                value: Qt.quaternion(0.677105, 0.154022, -0.563469, 0.447559)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.740857, 0.243023, -0.530693, 0.332318)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.832815, 0.262479, -0.406419, 0.268977)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.80487, 0.38608, -0.438364, 0.10471)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.803624, 0.388786, 0.438578, -0.103358)
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
                value: Qt.quaternion(0.918537, 0.292542, 0.260148, 0.0550687)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.950854, 0.21417, 0.0653509, 0.213863)
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
                value: Qt.quaternion(0.919341, 0.290145, -0.260174, -0.0542101)
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
                value: Qt.quaternion(0.798602, 0.202878, 0.438008, -0.359477)
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
                value: Qt.quaternion(0.676413, 0.156764, 0.564741, -0.446047)
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
                value: Qt.quaternion(0.985907, 0.0284237, -0.0324571, -0.161637)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.985343, 0.0408677, 0.0248324, -0.163747)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            keyframeSource: "animations/joint_34_rotation_1.qad"
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
                value: Qt.quaternion(0.986329, 0.0287795, 0.0314016, 0.159187)
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
            target: joint_17
            property: "rotation"
            keyframeSource: "animations/joint_17_rotation_1.qad"
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.985537, -0.0353192, 0.16075, 0.0403728)
            }
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.917195, 0.183176, -0.0869534, -0.342985)
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
                value: Qt.quaternion(0.953549, 0.0279008, 0.0803028, 0.288995)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.811304, 0.387422, 0.431818, -0.0722722)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.983804, -0.0256505, -0.171534, 0.0452485)
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
                value: Qt.quaternion(0.807369, 0.239137, -0.412802, 0.347223)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.811752, 0.309196, -0.452517, 0.201706)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.862408, 0.325766, -0.353923, 0.157693)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.785388, 0.423743, -0.449606, 0.0382463)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            keyframeSource: "animations/joint_13_rotation_1.qad"
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
                value: Qt.quaternion(0.881461, 0.371487, 0.27256, 0.103608)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.927741, 0.176932, 0.0922296, 0.315412)
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
                value: Qt.quaternion(0.901754, 0.343702, -0.257346, -0.0498167)
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
                value: Qt.quaternion(0.834585, 0.269066, 0.403826, -0.260761)
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
                value: Qt.quaternion(0.768426, 0.218751, 0.502447, -0.330478)
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
                value: Qt.quaternion(0.985907, 0.0284237, -0.0324571, -0.161637)
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
                value: Qt.quaternion(0.985343, 0.0408678, 0.0248323, -0.163747)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.0588892, -0.0105071, -0.0951018)
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
                value: Qt.quaternion(0.986329, 0.0287795, 0.0314015, 0.159187)
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
            keyframeSource: "animations/joint_18_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_17
            property: "rotation"
            keyframeSource: "animations/joint_17_rotation_2.qad"
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
            keyframeSource: "animations/joint_39_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990627, 0.0834875, 0.0119061, -0.107457)
            }
        }
        KeyframeGroup {
            target: joint_33
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.985537, -0.0353192, 0.160749, 0.0403729)
            }
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.917195, 0.183175, -0.0869534, -0.342986)
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
                value: Qt.quaternion(0.953549, 0.0279008, 0.0803028, 0.288995)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.811304, 0.387422, 0.431818, -0.0722724)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.983804, -0.0256505, -0.171534, 0.0452486)
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
                value: Qt.quaternion(0.807369, 0.239137, -0.412802, 0.347223)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.811752, 0.309196, -0.452517, 0.201706)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.862408, 0.325766, -0.353923, 0.157693)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.785388, 0.423743, -0.449606, 0.0382464)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            keyframeSource: "animations/joint_13_rotation_2.qad"
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
                value: Qt.quaternion(0.881461, 0.371487, 0.27256, 0.103608)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.927741, 0.176932, 0.0922297, 0.315412)
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
                value: Qt.quaternion(0.901754, 0.343702, -0.257346, -0.0498166)
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
                value: Qt.quaternion(0.834585, 0.269066, 0.403826, -0.260762)
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
                value: Qt.quaternion(0.768426, 0.218751, 0.502447, -0.330479)
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
