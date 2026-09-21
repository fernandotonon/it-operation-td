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
        id: qtmesh_gen3d_1_1789952021847_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1789952021847_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789952021847_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1789952021847_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1789952021847_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789952021847_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1789952021847_normal_png_texture
        objectName: "qtmesh_gen3d_1_1789952021847_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789952021847_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1789952021847_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1789952021847_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1789952021847_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1789952021847_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1789952021847_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1789952021847_normal_png_texture
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
            joint_13,
            joint_16,
            joint_29,
            joint_32,
            leftLeg,
            rightLeg,
            neck,
            joint_10,
            joint_14,
            joint_17,
            joint_19,
            joint_22,
            joint_30,
            joint_33,
            joint_35,
            joint_38,
            joint_41,
            leftFoot,
            rightFoot,
            head,
            joint_11,
            joint_15,
            joint_18,
            joint_20,
            joint_23,
            joint_31,
            joint_34,
            joint_36,
            joint_39,
            joint_42,
            joint_47,
            joint_51
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, -0.00145841, 0, 1, 0, 0.040819, 0, 0, 1, -0.0246726, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00145841, 0, 1, 0, 0.00164752, 0, 0, 1, -0.0246726, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00145841, 0, 1, 0, -0.0492753, 0, 0, 1, -0.0285897, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00145841, 0, 1, 0, -0.104115, 0, 0, 1, -0.0325069, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0337959, 0, 1, 0, -0.155038, 0, 0, 1, -0.036424, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0367127, 0, 1, 0, -0.155038, 0, 0, 1, -0.036424, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.104304, 0, 1, 0, -0.135453, 0, 0, 1, -0.036424, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.107221, 0, 1, 0, -0.135453, 0, 0, 1, -0.036424, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.174813, 0, 1, 0, -0.123701, 0, 0, 1, -0.0403412, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.17773, 0, 1, 0, -0.123701, 0, 0, 1, -0.0403412, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.272742, 0, 1, 0, -0.13937, 0, 0, 1, -0.0285897, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.275658, 0, 1, 0, -0.13937, 0, 0, 1, -0.0285897, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0494645, 0, 1, 0, 0.068239, 0, 0, 1, -0.0246726, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0523813, 0, 1, 0, 0.068239, 0, 0, 1, -0.0246726, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.31583, 0, 1, 0, -0.162873, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.31583, 0, 1, 0, -0.151121, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.28741, 0, 1, 0, -0.151121, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.318747, 0, 1, 0, -0.162873, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0690502, 0, 1, 0, 0.260179, 0, 0, 1, -0.0246726, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.071967, 0, 1, 0, 0.260179, 0, 0, 1, -0.0246726, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00145841, 0, 1, 0, -0.16679, 0, 0, 1, -0.036424, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.284493, 0, 1, 0, -0.151121, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.331499, 0, 1, 0, -0.16679, 0, 0, 1, -0.0168383, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.335416, 0, 1, 0, -0.155038, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.31583, 0, 1, 0, -0.135453, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.31583, 0, 1, 0, -0.123701, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.295244, 0, 1, 0, -0.162873, 0, 0, 1, -0.0168383, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.334416, 0, 1, 0, -0.16679, 0, 0, 1, -0.0168383, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.318747, 0, 1, 0, -0.151121, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.318747, 0, 1, 0, -0.135453, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.318747, 0, 1, 0, -0.123701, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0847187, 0, 1, 0, 0.440368, 0, 0, 1, -0.0442583, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0876356, 0, 1, 0, 0.440368, 0, 0, 1, -0.0403412, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00145841, 0, 1, 0, -0.22163, 0, 0, 1, -0.0285897, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.292327, 0, 1, 0, -0.162873, 0, 0, 1, -0.0168383, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.347167, 0, 1, 0, -0.170707, 0, 0, 1, -0.0129211, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.351085, 0, 1, 0, -0.158955, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.331499, 0, 1, 0, -0.13937, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.331499, 0, 1, 0, -0.123701, 0, 0, 1, -0.0168383, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.303079, 0, 1, 0, -0.174624, 0, 0, 1, -0.009004, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350084, 0, 1, 0, -0.170707, 0, 0, 1, -0.0129211, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.338333, 0, 1, 0, -0.155038, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.334416, 0, 1, 0, -0.13937, 0, 0, 1, -0.0207554, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.334416, 0, 1, 0, -0.123701, 0, 0, 1, -0.0168383, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.100387, 0, 1, 0, 0.495208, 0, 0, 1, 0.0497532, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.103304, 0, 1, 0, 0.495208, 0, 0, 1, 0.0497532, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: a5
        objectName: "a5"
        Node {
            id: tech_helmet_trim
            objectName: "tech_helmet_trim"
            Node {
                id: hips
                objectName: "Hips"
                position: Qt.vector3d(0.00145841, -0.040819, 0.0246726)
                Node {
                    id: spine
                    objectName: "Spine"
                    position: Qt.vector3d(0, 0.0391714, 0)
                    Node {
                        id: spine1
                        objectName: "Spine1"
                        position: Qt.vector3d(0, 0.0509229, 0.00391714)
                        Node {
                            id: spine2
                            objectName: "Spine2"
                            position: Qt.vector3d(0, 0.05484, 0.00391714)
                            Node {
                                id: neck
                                objectName: "Neck"
                                position: Qt.vector3d(0, 0.0626743, 0.00391715)
                                Node {
                                    id: head
                                    objectName: "Head"
                                    position: Qt.vector3d(0, 0.05484, -0.00783429)
                                }
                            }
                            Node {
                                id: leftArm
                                objectName: "LeftArm"
                                position: Qt.vector3d(-0.0352543, 0.0509229, 0.00391715)
                                Node {
                                    id: leftForeArm
                                    objectName: "LeftForeArm"
                                    position: Qt.vector3d(-0.0705086, -0.0195857, 0)
                                    Node {
                                        id: leftHand
                                        objectName: "LeftHand"
                                        position: Qt.vector3d(-0.0705086, -0.0117514, 0.00391714)
                                        Node {
                                            id: joint_9
                                            objectName: "joint_9"
                                            position: Qt.vector3d(-0.0979286, 0.0156686, -0.0117514)
                                            Node {
                                                id: joint_10
                                                objectName: "joint_10"
                                                position: Qt.vector3d(-0.0117514, 0.0117514, -0.00783429)
                                                Node {
                                                    id: joint_11
                                                    objectName: "joint_11"
                                                    position: Qt.vector3d(-0.00783429, 0.0117514, -0.00391714)
                                                    Node {
                                                        id: joint_12
                                                        objectName: "joint_12"
                                                        position: Qt.vector3d(-0.00783429, 0.0117514, -0.00783429)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_13
                                                objectName: "joint_13"
                                                position: Qt.vector3d(-0.0430886, 0.0235029, -0.00783429)
                                                Node {
                                                    id: joint_14
                                                    objectName: "joint_14"
                                                    position: Qt.vector3d(-0.0156686, 0.00391714, -0.00391714)
                                                    Node {
                                                        id: joint_15
                                                        objectName: "joint_15"
                                                        position: Qt.vector3d(-0.0156686, 0.00391714, -0.00391714)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_16
                                                objectName: "joint_16"
                                                position: Qt.vector3d(-0.0430886, 0.0117514, -0.00783429)
                                                Node {
                                                    id: joint_17
                                                    objectName: "joint_17"
                                                    position: Qt.vector3d(-0.0195857, 0.00391714, 0)
                                                    Node {
                                                        id: joint_18
                                                        objectName: "joint_18"
                                                        position: Qt.vector3d(-0.0156686, 0.00391714, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_19
                                                objectName: "joint_19"
                                                position: Qt.vector3d(-0.0430886, -0.00391714, -0.00783429)
                                                Node {
                                                    id: joint_20
                                                    objectName: "joint_20"
                                                    position: Qt.vector3d(-0.0156686, 0.00391714, 0)
                                                    Node {
                                                        id: joint_21
                                                        objectName: "joint_21"
                                                        position: Qt.vector3d(-0.0156686, 0, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_22
                                                objectName: "joint_22"
                                                position: Qt.vector3d(-0.0430886, -0.0156686, -0.00783429)
                                                Node {
                                                    id: joint_23
                                                    objectName: "joint_23"
                                                    position: Qt.vector3d(-0.0156686, 0, -0.00391714)
                                                    Node {
                                                        id: joint_24
                                                        objectName: "joint_24"
                                                        position: Qt.vector3d(-0.0117514, 0, -0.00391714)
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
                                position: Qt.vector3d(0.0352543, 0.0509229, 0.00391715)
                                Node {
                                    id: rightForeArm
                                    objectName: "RightForeArm"
                                    position: Qt.vector3d(0.0705086, -0.0195857, 0)
                                    Node {
                                        id: rightHand
                                        objectName: "RightHand"
                                        position: Qt.vector3d(0.0705086, -0.0117514, 0.00391714)
                                        Node {
                                            id: joint_28
                                            objectName: "joint_28"
                                            position: Qt.vector3d(0.0979286, 0.0156686, -0.0117514)
                                            Node {
                                                id: joint_29
                                                objectName: "joint_29"
                                                position: Qt.vector3d(0.0117514, 0.0117514, -0.00783429)
                                                Node {
                                                    id: joint_30
                                                    objectName: "joint_30"
                                                    position: Qt.vector3d(0.00783429, 0.0117514, -0.00391714)
                                                    Node {
                                                        id: joint_31
                                                        objectName: "joint_31"
                                                        position: Qt.vector3d(0.00783429, 0.0117514, -0.00783429)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_32
                                                objectName: "joint_32"
                                                position: Qt.vector3d(0.0430886, 0.0235029, -0.00783429)
                                                Node {
                                                    id: joint_33
                                                    objectName: "joint_33"
                                                    position: Qt.vector3d(0.0156686, 0.00391714, -0.00391714)
                                                    Node {
                                                        id: joint_34
                                                        objectName: "joint_34"
                                                        position: Qt.vector3d(0.0156686, 0.00391714, -0.00391714)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_35
                                                objectName: "joint_35"
                                                position: Qt.vector3d(0.0430886, 0.0117514, -0.00783429)
                                                Node {
                                                    id: joint_36
                                                    objectName: "joint_36"
                                                    position: Qt.vector3d(0.0195857, 0.00391714, 0)
                                                    Node {
                                                        id: joint_37
                                                        objectName: "joint_37"
                                                        position: Qt.vector3d(0.0156686, 0.00391714, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_38
                                                objectName: "joint_38"
                                                position: Qt.vector3d(0.0430886, -0.00391714, -0.00783429)
                                                Node {
                                                    id: joint_39
                                                    objectName: "joint_39"
                                                    position: Qt.vector3d(0.0156686, 0.00391714, 0)
                                                    Node {
                                                        id: joint_40
                                                        objectName: "joint_40"
                                                        position: Qt.vector3d(0.0156686, 0, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_41
                                                objectName: "joint_41"
                                                position: Qt.vector3d(0.0430886, -0.0156686, -0.00783429)
                                                Node {
                                                    id: joint_42
                                                    objectName: "joint_42"
                                                    position: Qt.vector3d(0.0156686, 0, -0.00391714)
                                                    Node {
                                                        id: joint_43
                                                        objectName: "joint_43"
                                                        position: Qt.vector3d(0.0117514, 0, -0.00391714)
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
                    position: Qt.vector3d(-0.0509229, -0.02742, 0)
                    Node {
                        id: leftLeg
                        objectName: "LeftLeg"
                        position: Qt.vector3d(-0.0195857, -0.19194, 0)
                        Node {
                            id: leftFoot
                            objectName: "LeftFoot"
                            position: Qt.vector3d(-0.0156686, -0.180189, 0.0195857)
                            Node {
                                id: joint_47
                                objectName: "joint_47"
                                position: Qt.vector3d(-0.0156686, -0.05484, -0.0940115)
                            }
                        }
                    }
                }
                Node {
                    id: rightUpLeg
                    objectName: "RightUpLeg"
                    position: Qt.vector3d(0.0509229, -0.02742, 0)
                    Node {
                        id: rightLeg
                        objectName: "RightLeg"
                        position: Qt.vector3d(0.0195857, -0.19194, 0)
                        Node {
                            id: rightFoot
                            objectName: "RightFoot"
                            position: Qt.vector3d(0.0156686, -0.180189, 0.0156686)
                            Node {
                                id: joint_51
                                objectName: "joint_51"
                                position: Qt.vector3d(0.0156686, -0.05484, -0.0900943)
                            }
                        }
                    }
                }
            }
        }
        Model {
            id: a5_mesh
            objectName: "a5_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1789952021847_mesh_mat_material
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
        endFrame: 2967
        currentFrame: 0
        enabled: node.clip === "Idle"
        animations: TimelineAnimation {
            duration: 2967
            from: 0
            to: 2967
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
