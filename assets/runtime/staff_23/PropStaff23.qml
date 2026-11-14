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
        id: qtmesh_gen3d_1_1794636424768_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794636424768_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794636424768_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794636424768_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794636424768_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794636424768_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794636424768_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794636424768_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794636424768_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794636424768_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794636424768_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794636424768_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794636424768_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794636424768_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794636424768_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_23_trim,
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
            joint_19,
            joint_22,
            joint_32,
            joint_35,
            joint_38,
            joint_41,
            leftLeg,
            rightLeg,
            neck,
            joint_14,
            joint_17,
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
            joint_15,
            joint_18,
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
            Qt.matrix4x4(1, 0, 0, -0.00191494, 0, 1, 0, 0.0921609, 0, 0, 1, -0.037573, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00191494, 0, 1, 0, 0.0412342, 0, 0, 1, -0.037573, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00191494, 0, 1, 0, -0.0214448, 0, 0, 1, -0.037573, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00191494, 0, 1, 0, -0.0919586, 0, 0, 1, -0.037573, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0411769, 0, 1, 0, -0.15072, 0, 0, 1, -0.037573, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.131278, 0, 1, 0, -0.119381, 0, 0, 1, -0.0454079, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.209627, 0, 1, 0, -0.103711, 0, 0, 1, -0.0571602, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.303645, 0, 1, 0, -0.103711, 0, 0, 1, -0.0610776, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0450067, 0, 1, 0, -0.15072, 0, 0, 1, -0.037573, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.135108, 0, 1, 0, -0.119381, 0, 0, 1, -0.0454079, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.213456, 0, 1, 0, -0.103711, 0, 0, 1, -0.0571602, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.307475, 0, 1, 0, -0.103711, 0, 0, 1, -0.0610776, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0529292, 0, 1, 0, 0.119583, 0, 0, 1, -0.037573, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.056759, 0, 1, 0, 0.119583, 0, 0, 1, -0.037573, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.334985, 0, 1, 0, -0.123298, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.334985, 0, 1, 0, -0.107628, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.338902, 0, 1, 0, -0.0919586, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.334985, 0, 1, 0, -0.0802063, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.338814, 0, 1, 0, -0.127216, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.338814, 0, 1, 0, -0.111546, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.342732, 0, 1, 0, -0.0958761, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.342732, 0, 1, 0, -0.0802063, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0685989, 0, 1, 0, 0.284115, 0, 0, 1, -0.0493253, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0724288, 0, 1, 0, 0.284115, 0, 0, 1, -0.0493253, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00191494, 0, 1, 0, -0.16639, 0, 0, 1, -0.037573, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.350654, 0, 1, 0, -0.127216, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354572, 0, 1, 0, -0.111546, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354572, 0, 1, 0, -0.0958761, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.350654, 0, 1, 0, -0.0802063, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.354484, 0, 1, 0, -0.127216, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358402, 0, 1, 0, -0.111546, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358402, 0, 1, 0, -0.0958761, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.354484, 0, 1, 0, -0.0802063, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0842687, 0, 1, 0, 0.44473, 0, 0, 1, -0.0610776, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0880985, 0, 1, 0, 0.44473, 0, 0, 1, -0.0610776, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.319315, 0, 1, 0, -0.127216, 0, 0, 1, -0.0610776, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.323145, 0, 1, 0, -0.127216, 0, 0, 1, -0.0610776, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00191494, 0, 1, 0, -0.217317, 0, 0, 1, -0.0297381, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.366324, 0, 1, 0, -0.131133, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.374159, 0, 1, 0, -0.111546, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.374159, 0, 1, 0, -0.0958761, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.366324, 0, 1, 0, -0.0802063, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.370154, 0, 1, 0, -0.131133, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.377989, 0, 1, 0, -0.111546, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.377989, 0, 1, 0, -0.0958761, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.370154, 0, 1, 0, -0.0802063, 0, 0, 1, -0.0689125, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0999384, 0, 1, 0, 0.495657, 0, 0, 1, 0.0368583, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.103768, 0, 1, 0, 0.495657, 0, 0, 1, 0.0368583, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.323232, 0, 1, 0, -0.146803, 0, 0, 1, -0.0610776, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.327062, 0, 1, 0, -0.146803, 0, 0, 1, -0.0610776, 0, 0, 0, 1)
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
                id: staff_23_trim
                objectName: "staff_23_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00191494, -0.0921609, 0.037573)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0509267, 0)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.062679, 0)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0705138, 0)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0744313, 0)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0509267, -0.00783487)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0430918, 0.0587615, 0)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.090101, -0.0313395, 0.00783487)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0783487, -0.0156697, 0.0117523)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.0940185, 0, 0.00391744)
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0313395, 0.0195872, 0.00783487)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0156698, 0.00391744, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0156697, 0.00391744, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0313395, 0.00391743, 0.00783487)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0195872, 0.00391743, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0195872, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0352569, -0.0117523, 0.00783487)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0156697, 0.00391743, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0195872, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0313395, -0.0235046, 0.00783487)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0156698, 0, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0156697, 0, 0)
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
                                    position: Qt.vector3d(0.0430918, 0.0587615, 0)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.090101, -0.0313395, 0.00783487)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0783487, -0.0156697, 0.0117523)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.0940185, 0, 0.00391744)
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0313395, 0.0235046, 0.00783487)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0156697, 0, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0156697, 0.00391744, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0313395, 0.00783487, 0.00783487)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0195872, 0, 0)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0195872, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0352569, -0.00783487, 0.00783487)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0156697, 0, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0195872, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0352569, -0.0235046, 0.00783487)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0117523, 0, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0156697, 0, 0)
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
                        position: Qt.vector3d(-0.0548441, -0.027422, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0156697, -0.164532, 0.0117523)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0156697, -0.160615, 0.0117523)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0156697, -0.0509267, -0.0979359)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0548441, -0.027422, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0156697, -0.164532, 0.0117523)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0156697, -0.160615, 0.0117523)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0156697, -0.0509267, -0.0979359)
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
            position: Qt.vector3d(-0.31148, 0.115463, 0.0610776)
            Node {
                id: joint_11
                objectName: "joint_11"
                position: Qt.vector3d(-0.00783488, 0.0117523, 0)
                Node {
                    id: joint_12
                    objectName: "joint_12"
                    position: Qt.vector3d(-0.00391743, 0.0195872, 0)
                }
            }
        }
        Node {
            id: joint_29
            objectName: "joint_29"
            position: Qt.vector3d(0.31531, 0.115463, 0.0610776)
            Node {
                id: joint_30
                objectName: "joint_30"
                position: Qt.vector3d(0.00783485, 0.0117523, 0)
                Node {
                    id: joint_31
                    objectName: "joint_31"
                    position: Qt.vector3d(0.00391746, 0.0195872, 0)
                }
            }
        }
        Model {
            id: typing_mesh
            objectName: "Typing_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1794636424768_mesh_mat_material
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
