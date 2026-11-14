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
        id: qtmesh_gen3d_1_1794647478013_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794647478013_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794647478013_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794647478013_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794647478013_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794647478013_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794647478013_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794647478013_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794647478013_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794647478013_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794647478013_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794647478013_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794647478013_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794647478013_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794647478013_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_26_trim,
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
            joint_13,
            joint_16,
            joint_29,
            joint_32,
            joint_38,
            leftLeg,
            rightLeg,
            neck,
            joint_14,
            joint_17,
            joint_30,
            joint_33,
            joint_39,
            leftFoot,
            rightFoot,
            joint_11,
            head,
            joint_15,
            joint_18,
            joint_19,
            joint_22,
            joint_31,
            joint_34,
            joint_35,
            joint_40,
            joint_41,
            joint_47,
            joint_51,
            joint_12,
            joint_21,
            joint_37
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00235757, 0, 1, 0, -0.0253638, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00235757, 0, 1, 0, -0.0723779, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00235757, 0, 1, 0, -0.12331, 0, 0, 1, 0.0210676, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00235757, 0, 1, 0, -0.185995, 0, 0, 1, 0.0210676, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.032903, 0, 1, 0, -0.240845, 0, 0, 1, 0.0171497, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0995063, 0, 1, 0, -0.217338, 0, 0, 1, 0.0171497, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.170028, 0, 1, 0, -0.193831, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.279727, 0, 1, 0, -0.189913, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0376182, 0, 1, 0, -0.240845, 0, 0, 1, 0.0171497, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.104221, 0, 1, 0, -0.217338, 0, 0, 1, 0.0171497, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.174743, 0, 1, 0, -0.193831, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.284442, 0, 1, 0, -0.189913, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0524922, 0, 1, 0, 0.00206111, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0572074, 0, 1, 0, 0.00206111, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.326741, 0, 1, 0, -0.217338, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.330659, 0, 1, 0, -0.209502, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.300114, 0, 1, 0, -0.205585, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331456, 0, 1, 0, -0.221256, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.339292, 0, 1, 0, -0.197749, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0564101, 0, 1, 0, 0.233214, 0, 0, 1, 0.0328211, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0611252, 0, 1, 0, 0.233214, 0, 0, 1, 0.0328211, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00235757, 0, 1, 0, -0.256517, 0, 0, 1, 0.0171497, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.338495, 0, 1, 0, -0.225174, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342413, 0, 1, 0, -0.21342, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.311867, 0, 1, 0, -0.221256, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.34321, 0, 1, 0, -0.225174, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.351046, 0, 1, 0, -0.205585, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0681636, 0, 1, 0, 0.448695, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0728787, 0, 1, 0, 0.448695, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.307152, 0, 1, 0, -0.221256, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00235757, 0, 1, 0, -0.303531, 0, 0, 1, 0.0132319, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.338495, 0, 1, 0, -0.225174, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354166, 0, 1, 0, -0.221256, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.334577, 0, 1, 0, -0.197749, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.330659, 0, 1, 0, -0.185995, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.323621, 0, 1, 0, -0.233009, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.34321, 0, 1, 0, -0.225174, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.335374, 0, 1, 0, -0.209502, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362799, 0, 1, 0, -0.209502, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.335374, 0, 1, 0, -0.185995, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.083835, 0, 1, 0, 0.495709, 0, 0, 1, 0.0955066, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0885501, 0, 1, 0, 0.495709, 0, 0, 1, 0.0955066, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.318906, 0, 1, 0, -0.233009, 0, 0, 1, 0.0289033, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358084, 0, 1, 0, -0.209502, 0, 0, 1, 0.0249854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358881, 0, 1, 0, -0.221256, 0, 0, 1, 0.0249854, 0, 0, 0, 1)
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
                id: staff_26_trim
                objectName: "staff_26_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00235757, 0.0253638, -0.0289033)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0470141, 0.00391784)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.050932, 0.00391784)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0626855, 0)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0705212, 0.00391784)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0470141, 0.00391784)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0352606, 0.0548498, 0.00391784)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0666033, -0.0235071, 0)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0705212, -0.0235071, -0.00783568)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.1097, -0.00391784, 0)
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0470141, 0.0274249, 0)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0117535, 0.00783569, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.050932, 0.0195892, 0)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0117535, 0.00391784, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0117535, 0.00783569, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0548498, 0.00783569, 0)
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.050932, -0.00391784, -0.00391784)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0117535, 0.00783569, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0117535, 0.00391784, 0)
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
                                    position: Qt.vector3d(0.0352606, 0.0548498, 0.00391784)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0666033, -0.0235071, 0)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0705212, -0.0235071, -0.00783568)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.1097, -0.00391784, 0)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0156714, 0.0156714, -0.00391784)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0117535, 0.0156714, 0)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.0117535, 0.0117535, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0470141, 0.0313427, 0)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0117535, 0.00391784, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.050932, 0.0195892, 0)
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0548498, 0.00783569, 0)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0117535, 0.00783569, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0117535, 0.00391784, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.050932, -0.00391784, -0.00391784)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0156714, 0.00783569, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
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
                        position: Qt.vector3d(-0.0548498, -0.0274249, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.00391784, -0.231153, -0.00391784)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0117535, -0.215481, 0.00391784)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0156714, -0.0470141, -0.0666033)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0548498, -0.0274249, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.00391784, -0.231153, -0.00391784)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0117535, -0.215481, 0.00391784)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0156714, -0.0470141, -0.0666033)
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
            position: Qt.vector3d(-0.295398, 0.205585, -0.0289033)
            Node {
                id: joint_11
                objectName: "joint_11"
                position: Qt.vector3d(-0.0117535, 0.0156714, 0)
                Node {
                    id: joint_12
                    objectName: "joint_12"
                    position: Qt.vector3d(-0.0117535, 0.0117535, 0)
                }
            }
        }
        Node {
            id: joint_20
            objectName: "joint_20"
            position: Qt.vector3d(-0.34633, 0.205585, -0.0249854)
            Node {
                id: joint_21
                objectName: "joint_21"
                position: Qt.vector3d(-0.0117535, 0.00391783, 0)
            }
        }
        Node {
            id: joint_36
            objectName: "joint_36"
            position: Qt.vector3d(0.347128, 0.21342, -0.0249854)
            Node {
                id: joint_37
                objectName: "joint_37"
                position: Qt.vector3d(0.0117535, 0.00783567, 0)
            }
        }
        Model {
            id: typing_mesh
            objectName: "Typing_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1794647478013_mesh_mat_material
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
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_0.qad"
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
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_0.qad"
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
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_0.qad"
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
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_1.qad"
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
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_1.qad"
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
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_1.qad"
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
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_2.qad"
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
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_2.qad"
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
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_2.qad"
        }
    }
}
