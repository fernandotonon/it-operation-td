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
        id: qmepaint_staff_02_rigged_1_png_texture
        objectName: "QMEPaint_staff_02_rigged_1.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/QMEPaint_staff_02_rigged_1.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1789981827371_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1789981827371_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789981827371_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1789981827371_normal_png_texture
        objectName: "qtmesh_gen3d_1_1789981827371_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789981827371_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1789981827371_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1789981827371_mesh_mat"
        baseColorMap: qmepaint_staff_02_rigged_1_png_texture
        metalnessMap: qtmesh_gen3d_1_1789981827371_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1789981827371_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1789981827371_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            hips,
            spine,
            spine1,
            spine2,
            leftArm,
            rightArm,
            leftForeArm,
            rightForeArm,
            leftHand,
            rightHand,
            joint_9,
            joint_28,
            leftUpLeg,
            rightUpLeg,
            joint_10,
            joint_16,
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
            joint_13,
            joint_17,
            joint_19,
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
            joint_14,
            joint_18,
            joint_20,
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
            Qt.matrix4x4(1, 0, 0, -0.001592, 0, 1, 0, 0.0962479, 0, 0, 1, -0.0205324, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001592, 0, 1, 0, 0.0453904, 0, 0, 1, -0.0244445, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001592, 0, 1, 0, -0.0172036, 0, 0, 1, -0.0283567, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001592, 0, 1, 0, -0.0876218, 0, 0, 1, -0.0361809, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0375292, 0, 1, 0, -0.150216, 0, 0, 1, -0.040093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0407132, 0, 1, 0, -0.150216, 0, 0, 1, -0.040093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.115772, 0, 1, 0, -0.126743, 0, 0, 1, -0.0557415, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.118956, 0, 1, 0, -0.126743, 0, 0, 1, -0.0479173, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.197926, 0, 1, 0, -0.118919, 0, 0, 1, -0.0674779, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.20111, 0, 1, 0, -0.118919, 0, 0, 1, -0.0674779, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.31529, 0, 1, 0, -0.126743, 0, 0, 1, -0.0753021, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.318474, 0, 1, 0, -0.126743, 0, 0, 1, -0.0753021, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0492656, 0, 1, 0, 0.123633, 0, 0, 1, -0.0205324, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0524496, 0, 1, 0, 0.123633, 0, 0, 1, -0.0205324, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327026, 0, 1, 0, -0.138479, 0, 0, 1, -0.0753021, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.366147, 0, 1, 0, -0.134567, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.366147, 0, 1, 0, -0.107182, 0, 0, 1, -0.0831264, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.33021, 0, 1, 0, -0.142391, 0, 0, 1, -0.0753021, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.365419, 0, 1, 0, -0.150216, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.369331, 0, 1, 0, -0.134567, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.373244, 0, 1, 0, -0.122831, 0, 0, 1, -0.0831264, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.369331, 0, 1, 0, -0.107182, 0, 0, 1, -0.0831264, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0649141, 0, 1, 0, 0.295766, 0, 0, 1, -0.0322688, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0680981, 0, 1, 0, 0.295766, 0, 0, 1, -0.0322688, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001592, 0, 1, 0, -0.165864, 0, 0, 1, -0.040093, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.338763, 0, 1, 0, -0.150216, 0, 0, 1, -0.0753021, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362235, 0, 1, 0, -0.150216, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.381796, 0, 1, 0, -0.138479, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.370059, 0, 1, 0, -0.122831, 0, 0, 1, -0.0831264, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.381796, 0, 1, 0, -0.107182, 0, 0, 1, -0.0792142, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.341947, 0, 1, 0, -0.154128, 0, 0, 1, -0.0753021, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381068, 0, 1, 0, -0.15804, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.38498, 0, 1, 0, -0.138479, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.388892, 0, 1, 0, -0.122831, 0, 0, 1, -0.0831264, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.38498, 0, 1, 0, -0.107182, 0, 0, 1, -0.0792142, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0805625, 0, 1, 0, 0.452251, 0, 0, 1, -0.0322688, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0837465, 0, 1, 0, 0.452251, 0, 0, 1, -0.0322688, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001592, 0, 1, 0, -0.21281, 0, 0, 1, -0.0361809, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342675, 0, 1, 0, -0.173688, 0, 0, 1, -0.0792142, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.377884, 0, 1, 0, -0.15804, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.397444, 0, 1, 0, -0.142391, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.385708, 0, 1, 0, -0.122831, 0, 0, 1, -0.0831264, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.393532, 0, 1, 0, -0.107182, 0, 0, 1, -0.0753021, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.345859, 0, 1, 0, -0.173688, 0, 0, 1, -0.0792142, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.392804, 0, 1, 0, -0.161952, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.400628, 0, 1, 0, -0.142391, 0, 0, 1, -0.0870385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.40454, 0, 1, 0, -0.122831, 0, 0, 1, -0.0792142, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.396716, 0, 1, 0, -0.107182, 0, 0, 1, -0.0753021, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.104035, 0, 1, 0, 0.479636, 0, 0, 1, 0.0498858, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.107219, 0, 1, 0, 0.479636, 0, 0, 1, 0.0498858, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: staff_02_rigged
        objectName: "staff_02_rigged"
        Node {
            id: staff_02_trim
            objectName: "staff_02_trim"
            Node {
                id: hips
                objectName: "Hips"
                position: Qt.vector3d(0.001592, -0.0962479, 0.0205324)
                Node {
                    id: spine
                    objectName: "Spine"
                    position: Qt.vector3d(0, 0.0508576, 0.00391212)
                    Node {
                        id: spine1
                        objectName: "Spine1"
                        position: Qt.vector3d(0, 0.0625939, 0.00391212)
                        Node {
                            id: spine2
                            objectName: "Spine2"
                            position: Qt.vector3d(0, 0.0704182, 0.00782424)
                            Node {
                                id: neck
                                objectName: "Neck"
                                position: Qt.vector3d(0, 0.0782424, 0.00391212)
                                Node {
                                    id: head
                                    objectName: "Head"
                                    position: Qt.vector3d(0, 0.0469455, -0.00391212)
                                }
                            }
                            Node {
                                id: leftArm
                                objectName: "LeftArm"
                                position: Qt.vector3d(-0.0391212, 0.0625939, 0.00391212)
                                Node {
                                    id: leftForeArm
                                    objectName: "LeftForeArm"
                                    position: Qt.vector3d(-0.0782424, -0.0234727, 0.0156485)
                                    Node {
                                        id: leftHand
                                        objectName: "LeftHand"
                                        position: Qt.vector3d(-0.0821545, -0.00782424, 0.0117364)
                                        Node {
                                            id: joint_9
                                            objectName: "joint_9"
                                            position: Qt.vector3d(-0.117364, 0.00782424, 0.00782424)
                                            Node {
                                                id: joint_10
                                                objectName: "joint_10"
                                                position: Qt.vector3d(-0.0117364, 0.0117364, 0)
                                                Node {
                                                    id: joint_11
                                                    objectName: "joint_11"
                                                    position: Qt.vector3d(-0.0117363, 0.0117364, 0)
                                                    Node {
                                                        id: joint_12
                                                        objectName: "joint_12"
                                                        position: Qt.vector3d(-0.00391215, 0.0234727, 0.00391212)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_13
                                                objectName: "joint_13"
                                                position: Qt.vector3d(-0.0469455, 0.0234727, 0.0117364)
                                                Node {
                                                    id: joint_14
                                                    objectName: "joint_14"
                                                    position: Qt.vector3d(-0.0156485, 0.00782424, 0)
                                                    Node {
                                                        id: joint_15
                                                        objectName: "joint_15"
                                                        position: Qt.vector3d(-0.0117364, 0.00391212, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_16
                                                objectName: "joint_16"
                                                position: Qt.vector3d(-0.0508576, 0.00782424, 0.0117364)
                                                Node {
                                                    id: joint_17
                                                    objectName: "joint_17"
                                                    position: Qt.vector3d(-0.0156485, 0.00391212, 0)
                                                    Node {
                                                        id: joint_18
                                                        objectName: "joint_18"
                                                        position: Qt.vector3d(-0.0156485, 0.00391212, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_19
                                                objectName: "joint_19"
                                                position: Qt.vector3d(-0.0547697, -0.00391212, 0.00782424)
                                                Node {
                                                    id: joint_20
                                                    objectName: "joint_20"
                                                    position: Qt.vector3d(-0.0156485, 0, 0)
                                                    Node {
                                                        id: joint_21
                                                        objectName: "joint_21"
                                                        position: Qt.vector3d(-0.0156485, 0, -0.00391212)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_22
                                                objectName: "joint_22"
                                                position: Qt.vector3d(-0.0508576, -0.0195606, 0.00782424)
                                                Node {
                                                    id: joint_23
                                                    objectName: "joint_23"
                                                    position: Qt.vector3d(-0.0156485, 0, -0.00391212)
                                                    Node {
                                                        id: joint_24
                                                        objectName: "joint_24"
                                                        position: Qt.vector3d(-0.0117363, 0, -0.00391212)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            Node {
                                id: rightArm
                                objectName: "RightArm"
                                position: Qt.vector3d(0.0391212, 0.0625939, 0.00391212)
                                Node {
                                    id: rightForeArm
                                    objectName: "RightForeArm"
                                    position: Qt.vector3d(0.0782424, -0.0234727, 0.00782424)
                                    Node {
                                        id: rightHand
                                        objectName: "RightHand"
                                        position: Qt.vector3d(0.0821545, -0.00782424, 0.0195606)
                                        Node {
                                            id: joint_28
                                            objectName: "joint_28"
                                            position: Qt.vector3d(0.117364, 0.00782424, 0.00782424)
                                            Node {
                                                id: joint_29
                                                objectName: "joint_29"
                                                position: Qt.vector3d(0.0117363, 0.0156485, 0)
                                                Node {
                                                    id: joint_30
                                                    objectName: "joint_30"
                                                    position: Qt.vector3d(0.0117364, 0.0117364, 0)
                                                    Node {
                                                        id: joint_31
                                                        objectName: "joint_31"
                                                        position: Qt.vector3d(0.00391209, 0.0195606, 0.00391212)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_32
                                                objectName: "joint_32"
                                                position: Qt.vector3d(0.0469455, 0.0234727, 0.0117364)
                                                Node {
                                                    id: joint_33
                                                    objectName: "joint_33"
                                                    position: Qt.vector3d(0.0156485, 0.00782424, 0)
                                                    Node {
                                                        id: joint_34
                                                        objectName: "joint_34"
                                                        position: Qt.vector3d(0.0117363, 0.00391212, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_35
                                                objectName: "joint_35"
                                                position: Qt.vector3d(0.0508575, 0.00782424, 0.0117364)
                                                Node {
                                                    id: joint_36
                                                    objectName: "joint_36"
                                                    position: Qt.vector3d(0.0156485, 0.00391212, 0)
                                                    Node {
                                                        id: joint_37
                                                        objectName: "joint_37"
                                                        position: Qt.vector3d(0.0156485, 0.00391212, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_38
                                                objectName: "joint_38"
                                                position: Qt.vector3d(0.0547697, -0.00391212, 0.00782424)
                                                Node {
                                                    id: joint_39
                                                    objectName: "joint_39"
                                                    position: Qt.vector3d(0.0156485, 0, 0)
                                                    Node {
                                                        id: joint_40
                                                        objectName: "joint_40"
                                                        position: Qt.vector3d(0.0156485, 0, -0.00391212)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_41
                                                objectName: "joint_41"
                                                position: Qt.vector3d(0.0508575, -0.0195606, 0.00782424)
                                                Node {
                                                    id: joint_42
                                                    objectName: "joint_42"
                                                    position: Qt.vector3d(0.0156485, 0, -0.00391212)
                                                    Node {
                                                        id: joint_43
                                                        objectName: "joint_43"
                                                        position: Qt.vector3d(0.0117364, 0, -0.00391212)
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
                    position: Qt.vector3d(-0.0508576, -0.0273848, 0)
                    Node {
                        id: leftLeg
                        objectName: "LeftLeg"
                        position: Qt.vector3d(-0.0156485, -0.172133, 0.0117364)
                        Node {
                            id: leftFoot
                            objectName: "LeftFoot"
                            position: Qt.vector3d(-0.0156485, -0.156485, 0)
                            Node {
                                id: joint_47
                                objectName: "joint_47"
                                position: Qt.vector3d(-0.0234727, -0.0273848, -0.0821545)
                            }
                        }
                    }
                }
                Node {
                    id: rightUpLeg
                    objectName: "RightUpLeg"
                    position: Qt.vector3d(0.0508576, -0.0273848, 0)
                    Node {
                        id: rightLeg
                        objectName: "RightLeg"
                        position: Qt.vector3d(0.0156485, -0.172133, 0.0117364)
                        Node {
                            id: rightFoot
                            objectName: "RightFoot"
                            position: Qt.vector3d(0.0156485, -0.156485, 0)
                            Node {
                                id: joint_51
                                objectName: "joint_51"
                                position: Qt.vector3d(0.0234727, -0.0273848, -0.0821545)
                            }
                        }
                    }
                }
            }
        }
        Model {
            id: staff_02_rigged_mesh
            objectName: "staff_02_rigged_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1789981827371_mesh_mat_material
            ]
        }
    }

    // Animations:
    Timeline {
        id: cheer_timeline
        objectName: "Cheer"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 1967
        currentFrame: 0
        enabled: node.clip === "Cheer"
        animations: TimelineAnimation {
            duration: 1967
            from: 0
            to: 1967
            running: node.clip === "Cheer"
            loops: 1
            onFinished: Qt.callLater(function() { if (node) node.clipFinished("Cheer") })
        }
        KeyframeGroup {
            target: rightFoot
            property: "rotation"
            keyframeSource: "animations/rightFoot_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_0.qad"
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
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_0.qad"
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
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_0.qad"
        }
        KeyframeGroup {
            target: hips
            property: "rotation"
            keyframeSource: "animations/hips_rotation_0.qad"
        }
    }
    Timeline {
        id: idle_timeline
        objectName: "Idle"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 1834
        currentFrame: 0
        enabled: node.clip === "Idle"
        animations: TimelineAnimation {
            duration: 1834
            from: 0
            to: 1834
            running: node.clip === "Idle"
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: rightFoot
            property: "rotation"
            keyframeSource: "animations/rightFoot_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_1.qad"
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
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_1.qad"
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
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_1.qad"
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
    }
    Timeline {
        id: typing_timeline
        objectName: "Typing"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 2367
        currentFrame: 0
        enabled: node.clip === "Typing"
        animations: TimelineAnimation {
            duration: 2367
            from: 0
            to: 2367
            running: node.clip === "Typing"
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: rightFoot
            property: "rotation"
            keyframeSource: "animations/rightFoot_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_2.qad"
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
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_2.qad"
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
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_2.qad"
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
    }
}
