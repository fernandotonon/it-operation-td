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
        id: qtmesh_gen3d_1_1794635379640_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794635379640_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794635379640_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794635379640_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794635379640_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794635379640_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794635379640_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794635379640_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794635379640_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794635379640_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794635379640_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794635379640_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794635379640_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794635379640_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794635379640_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_15_trim,
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
            joint_35,
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
            joint_36,
            joint_40,
            joint_43,
            joint_47,
            joint_51
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0134911, 0, 1, 0, 0.0960136, 0, 0, 1, -0.0234074, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0134911, 0, 1, 0, 0.0451198, 0, 0, 1, -0.0273224, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0134911, 0, 1, 0, -0.00968895, 0, 0, 1, -0.0351522, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0134911, 0, 1, 0, -0.0762424, 0, 0, 1, -0.0390671, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0256579, 0, 1, 0, -0.134966, 0, 0, 1, -0.042982, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.103956, 0, 1, 0, -0.115391, 0, 0, 1, -0.0508118, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.190084, 0, 1, 0, -0.107562, 0, 0, 1, -0.0586416, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.307531, 0, 1, 0, -0.111477, 0, 0, 1, -0.0625565, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0487253, 0, 1, 0, -0.134966, 0, 0, 1, -0.042982, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.127024, 0, 1, 0, -0.115391, 0, 0, 1, -0.0508118, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.209237, 0, 1, 0, -0.107562, 0, 0, 1, -0.0664714, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.318854, 0, 1, 0, -0.111477, 0, 0, 1, -0.0899609, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0374027, 0, 1, 0, 0.119503, 0, 0, 1, -0.0273224, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.064385, 0, 1, 0, 0.119503, 0, 0, 1, -0.0234074, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.319276, 0, 1, 0, -0.119306, 0, 0, 1, -0.0586416, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.350595, 0, 1, 0, -0.127136, 0, 0, 1, -0.0703864, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.350595, 0, 1, 0, -0.0997319, 0, 0, 1, -0.0743013, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.34668, 0, 1, 0, -0.0879871, 0, 0, 1, -0.0743013, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.330599, 0, 1, 0, -0.123221, 0, 0, 1, -0.0938758, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358003, 0, 1, 0, -0.131051, 0, 0, 1, -0.109535, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.365833, 0, 1, 0, -0.103647, 0, 0, 1, -0.105621, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.361918, 0, 1, 0, -0.091902, 0, 0, 1, -0.101706, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0530623, 0, 1, 0, 0.291759, 0, 0, 1, -0.0312373, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0800446, 0, 1, 0, 0.291759, 0, 0, 1, -0.0312373, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0134911, 0, 1, 0, -0.146711, 0, 0, 1, -0.042982, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.331021, 0, 1, 0, -0.127136, 0, 0, 1, -0.0547267, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.37017, 0, 1, 0, -0.131051, 0, 0, 1, -0.0703864, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.350595, 0, 1, 0, -0.111477, 0, 0, 1, -0.0743013, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.37017, 0, 1, 0, -0.0997319, 0, 0, 1, -0.0743013, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.366255, 0, 1, 0, -0.0840722, 0, 0, 1, -0.0703864, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.338429, 0, 1, 0, -0.134966, 0, 0, 1, -0.0977907, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.373663, 0, 1, 0, -0.131051, 0, 0, 1, -0.11345, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.361918, 0, 1, 0, -0.115391, 0, 0, 1, -0.105621, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381493, 0, 1, 0, -0.103647, 0, 0, 1, -0.109535, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.377578, 0, 1, 0, -0.0879871, 0, 0, 1, -0.101706, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0726368, 0, 1, 0, 0.448355, 0, 0, 1, -0.0390671, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0996191, 0, 1, 0, 0.448355, 0, 0, 1, -0.0390671, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0134911, 0, 1, 0, -0.201519, 0, 0, 1, -0.042982, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.334936, 0, 1, 0, -0.146711, 0, 0, 1, -0.0547267, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.38583, 0, 1, 0, -0.134966, 0, 0, 1, -0.0703864, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.37017, 0, 1, 0, -0.111477, 0, 0, 1, -0.0743013, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.389744, 0, 1, 0, -0.0997319, 0, 0, 1, -0.0743013, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.381915, 0, 1, 0, -0.0801573, 0, 0, 1, -0.0664714, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.338429, 0, 1, 0, -0.150626, 0, 0, 1, -0.105621, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.389322, 0, 1, 0, -0.134966, 0, 0, 1, -0.117365, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381493, 0, 1, 0, -0.115391, 0, 0, 1, -0.109535, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.397152, 0, 1, 0, -0.103647, 0, 0, 1, -0.109535, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.393237, 0, 1, 0, -0.0840722, 0, 0, 1, -0.101706, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0882965, 0, 1, 0, 0.491419, 0, 0, 1, 0.0353162, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.119194, 0, 1, 0, 0.491419, 0, 0, 1, 0.0353162, 0, 0, 0, 1)
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
                id: staff_15_trim
                objectName: "staff_15_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.0134911, -0.0960136, 0.0234074)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0508938, 0.00391491)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0548087, 0.00782982)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0665534, 0.00391491)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0704684, 0.00391491)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0548087, 0)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0391491, 0.0587236, 0.00391491)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0782982, -0.0195745, 0.00782982)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.086128, -0.00782982, 0.00782982)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.117447, 0.00391491, 0.00391491)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0117447, 0.00782982, -0.00391491)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0117447, 0.00782982, -0.00391491)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00391489, 0.0195745, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.043064, 0.0156596, 0.00782982)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0195746, 0.00391491, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0156596, 0.00391491, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.043064, 0, 0.0117447)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0195746, 0, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0234894, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.043064, -0.0117447, 0.0117447)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0195746, 0, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0195746, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0391491, -0.0234894, 0.0117447)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0195745, -0.00391492, -0.00391491)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0156597, -0.00391491, -0.00391491)
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
                                    position: Qt.vector3d(0.0352342, 0.0587236, 0.00391491)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0782982, -0.0195745, 0.00782982)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0822131, -0.00782982, 0.0156596)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.109617, 0.00391491, 0.0234895)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0117447, 0.0117447, 0.00391491)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.00782982, 0.0117447, 0.00391491)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0, 0.0156596, 0.00782982)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0391491, 0.0195745, 0.0195745)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0156596, 0, 0.00391491)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0156597, 0.00391491, 0.00391491)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.043064, 0.00391492, 0.0156596)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0195746, 0, 0.00391491)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0156596, 0, 0.00391491)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0469789, -0.00782982, 0.0156596)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0156597, 0, 0.00391491)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0156596, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.043064, -0.0195745, 0.0117447)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0156596, -0.00391491, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0156596, -0.00391492, 0)
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
                        position: Qt.vector3d(-0.0508938, -0.0234895, 0.00391491)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0156596, -0.172256, 0.00391491)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0195745, -0.156596, 0.00782982)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0156596, -0.043064, -0.0743833)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0508938, -0.0234895, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0156596, -0.172256, 0.00782982)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0195745, -0.156596, 0.00782982)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0195745, -0.043064, -0.0743833)
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
                qtmesh_gen3d_1_1794635379640_mesh_mat_material
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
            target: joint_36
            property: "rotation"
            keyframeSource: "animations/joint_36_rotation_0.qad"
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
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.759021, 0.310116, -0.39673, 0.412698)
            }
        }
        KeyframeGroup {
            target: joint_33
            property: "rotation"
            keyframeSource: "animations/joint_33_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            keyframeSource: "animations/joint_30_rotation_0.qad"
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
                value: Qt.quaternion(0.872033, 0.281737, 0.284126, -0.281879)
            }
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
                value: Qt.quaternion(0.663381, 0.291227, -0.508001, 0.465883)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768272, 0.300166, -0.378584, 0.419921)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768272, 0.300167, -0.378583, 0.41992)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.895098, 0.309908, 0.254307, -0.195152)
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
                value: Qt.quaternion(0.956973, 0.209404, 0.144415, 0.139631)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.950796, 0.166207, -0.0828138, 0.248002)
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
                value: Qt.quaternion(0.943777, 0.309044, 0.014943, -0.116423)
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
                value: Qt.quaternion(0.872032, 0.281737, 0.284126, -0.281881)
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
                value: Qt.quaternion(0.809364, 0.276911, 0.393982, -0.336195)
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
                value: Qt.quaternion(0.985907, 0.0307111, -0.0306541, -0.161571)
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
                value: Qt.quaternion(0.985343, 0.0466922, 0.0195437, -0.162904)
            }
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990464, 0.0820502, 0.0187925, -0.10907)
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
            keyframeSource: "animations/joint_24_rotation_1.qad"
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
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.810353, 0.366053, -0.337295, 0.309138)
            }
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
                value: Qt.quaternion(0.973974, 0.132392, 0.119128, -0.1402)
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
            keyframeSource: "animations/joint_20_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.916435, 0.316387, 0.223699, -0.100022)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            keyframeSource: "animations/joint_14_rotation_1.qad"
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
                value: Qt.quaternion(0.788646, 0.351099, -0.335144, 0.37742)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.834647, 0.366455, -0.275304, 0.305424)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.778615, 0.339655, -0.392229, 0.352917)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.901837, 0.335002, 0.262389, -0.0749342)
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
                value: Qt.quaternion(0.925549, 0.262248, 0.167265, 0.215887)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.930865, 0.115929, -0.0504686, 0.342788)
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
                value: Qt.quaternion(0.926476, 0.359814, 0.0299059, -0.106215)
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
                value: Qt.quaternion(0.905312, 0.301093, 0.25103, -0.163511)
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
                value: Qt.quaternion(0.883065, 0.27953, 0.319483, -0.199973)
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
                value: Qt.quaternion(0.985907, 0.0307111, -0.0306542, -0.161571)
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
                value: Qt.quaternion(0.985343, 0.0466923, 0.0195437, -0.162904)
            }
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990464, 0.0820502, 0.0187925, -0.10907)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.0509532, -0.0137262, -0.0991871)
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
            keyframeSource: "animations/joint_24_rotation_2.qad"
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.981446, 0.0201606, -0.102289, -0.160919)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.810352, 0.366053, -0.337295, 0.309138)
            }
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
                value: Qt.quaternion(0.973974, 0.132392, 0.119128, -0.1402)
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
            keyframeSource: "animations/joint_20_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.916435, 0.316386, 0.223699, -0.100022)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            keyframeSource: "animations/joint_14_rotation_2.qad"
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
                value: Qt.quaternion(0.788646, 0.351099, -0.335144, 0.37742)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.834647, 0.366455, -0.275304, 0.305424)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.778615, 0.339655, -0.392229, 0.352917)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.901837, 0.335002, 0.262388, -0.0749343)
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
                value: Qt.quaternion(0.925549, 0.262247, 0.167265, 0.215887)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.930865, 0.115929, -0.0504686, 0.342788)
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
                value: Qt.quaternion(0.926476, 0.359814, 0.0299059, -0.106215)
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
                value: Qt.quaternion(0.905312, 0.301093, 0.25103, -0.163511)
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
                value: Qt.quaternion(0.883065, 0.27953, 0.319483, -0.199973)
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
