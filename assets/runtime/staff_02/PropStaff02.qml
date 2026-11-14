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
        id: qtmesh_gen3d_1_1794462446116_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794462446116_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794462446116_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794462446116_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794462446116_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794462446116_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794462446116_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794462446116_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794462446116_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794462446116_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794462446116_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794462446116_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794462446116_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794462446116_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794462446116_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_02,
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
            Qt.matrix4x4(1, 0, 0, -0.00174914, 0, 1, 0, 0.0921671, 0, 0, 1, -0.0252967, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00174914, 0, 1, 0, 0.041162, 0, 0, 1, -0.0292202, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00174914, 0, 1, 0, -0.0216137, 0, 0, 1, -0.0331437, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00174914, 0, 1, 0, -0.0922362, 0, 0, 1, -0.0370672, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0374856, 0, 1, 0, -0.155012, 0, 0, 1, -0.0409907, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.119879, 0, 1, 0, -0.127548, 0, 0, 1, -0.0566846, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.198348, 0, 1, 0, -0.123624, 0, 0, 1, -0.0645315, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.316052, 0, 1, 0, -0.127548, 0, 0, 1, -0.0763019, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0409839, 0, 1, 0, -0.155012, 0, 0, 1, -0.0409907, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.123377, 0, 1, 0, -0.127548, 0, 0, 1, -0.0566846, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.201846, 0, 1, 0, -0.123624, 0, 0, 1, -0.0645315, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.319551, 0, 1, 0, -0.127548, 0, 0, 1, -0.0763019, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0531795, 0, 1, 0, 0.119631, 0, 0, 1, -0.0252967, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0566778, 0, 1, 0, 0.119631, 0, 0, 1, -0.0213733, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327823, 0, 1, 0, -0.143241, 0, 0, 1, -0.0763019, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.363134, 0, 1, 0, -0.151088, 0, 0, 1, -0.0880724, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.367058, 0, 1, 0, -0.135394, 0, 0, 1, -0.0841489, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.370981, 0, 1, 0, -0.119701, 0, 0, 1, -0.0802254, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.370981, 0, 1, 0, -0.10793, 0, 0, 1, -0.0723785, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331321, 0, 1, 0, -0.143241, 0, 0, 1, -0.0763019, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366632, 0, 1, 0, -0.151088, 0, 0, 1, -0.0880724, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.370556, 0, 1, 0, -0.135394, 0, 0, 1, -0.0841489, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.374479, 0, 1, 0, -0.119701, 0, 0, 1, -0.0802254, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.374479, 0, 1, 0, -0.10793, 0, 0, 1, -0.0723785, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.06495, 0, 1, 0, 0.296188, 0, 0, 1, -0.0331437, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0684482, 0, 1, 0, 0.296188, 0, 0, 1, -0.0331437, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00174914, 0, 1, 0, -0.170706, 0, 0, 1, -0.0409907, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.339593, 0, 1, 0, -0.155012, 0, 0, 1, -0.0802254, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.378828, 0, 1, 0, -0.158935, 0, 0, 1, -0.0880724, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.386675, 0, 1, 0, -0.139318, 0, 0, 1, -0.0841489, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.390598, 0, 1, 0, -0.119701, 0, 0, 1, -0.0763019, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.386675, 0, 1, 0, -0.104007, 0, 0, 1, -0.0723785, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.343092, 0, 1, 0, -0.155012, 0, 0, 1, -0.0802254, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.382326, 0, 1, 0, -0.158935, 0, 0, 1, -0.0880724, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.390173, 0, 1, 0, -0.139318, 0, 0, 1, -0.0841489, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.394097, 0, 1, 0, -0.119701, 0, 0, 1, -0.0763019, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.390173, 0, 1, 0, -0.104007, 0, 0, 1, -0.0723785, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0767204, 0, 1, 0, 0.453127, 0, 0, 1, -0.0331437, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0802187, 0, 1, 0, 0.453127, 0, 0, 1, -0.0292202, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00174914, 0, 1, 0, -0.221711, 0, 0, 1, -0.0370672, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.343517, 0, 1, 0, -0.178553, 0, 0, 1, -0.0841489, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.394522, 0, 1, 0, -0.162859, 0, 0, 1, -0.0880724, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.406292, 0, 1, 0, -0.143241, 0, 0, 1, -0.0841489, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.406292, 0, 1, 0, -0.119701, 0, 0, 1, -0.0723785, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.398445, 0, 1, 0, -0.100083, 0, 0, 1, -0.068455, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.347015, 0, 1, 0, -0.178553, 0, 0, 1, -0.0841489, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.39802, 0, 1, 0, -0.162859, 0, 0, 1, -0.0880724, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.409791, 0, 1, 0, -0.143241, 0, 0, 1, -0.0841489, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.409791, 0, 1, 0, -0.119701, 0, 0, 1, -0.0723785, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.401944, 0, 1, 0, -0.100083, 0, 0, 1, -0.068455, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0884908, 0, 1, 0, 0.500209, 0, 0, 1, 0.0492493, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0919891, 0, 1, 0, 0.500209, 0, 0, 1, 0.0492493, 0, 0, 0, 1)
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
                id: staff_02
                objectName: "staff_02"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00174914, -0.0921671, 0.0252967)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0510052, 0.00392348)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0627756, 0.00392348)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0706226, 0.00392348)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0784695, 0.00392348)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0510052, -0.00392348)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0392348, 0.0627756, 0.00392348)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.082393, -0.0274643, 0.0156939)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0784695, -0.00392348, 0.00784696)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.117704, 0.00392348, 0.0117704)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0117704, 0.0156939, 0)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0117704, 0.0117704, 0.00392348)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00392348, 0.0235409, 0.00392348)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0470817, 0.0235409, 0.0117704)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0156939, 0.00784695, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0156939, 0.00392348, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0510052, 0.00784695, 0.00784695)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0196174, 0.00392348, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0196174, 0.00392348, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0549287, -0.00784696, 0.00392348)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0196174, 0, -0.00392348)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0156939, 0, -0.00392348)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0549287, -0.0196174, -0.00392348)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0156939, -0.00392348, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0117704, -0.00392348, -0.00392348)
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
                                    position: Qt.vector3d(0.0392348, 0.0627756, 0.00392348)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.082393, -0.0274643, 0.0156939)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0784695, -0.00392348, 0.00784696)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.117704, 0.00392348, 0.0117704)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0117704, 0.0156939, 0)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0117704, 0.0117704, 0.00392348)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00392348, 0.0235409, 0.00392348)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0470817, 0.0235409, 0.0117704)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0156939, 0.00784695, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0156939, 0.00392348, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0510052, 0.00784695, 0.00784695)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0196174, 0.00392348, 0)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0196174, 0.00392348, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0549287, -0.00784696, 0.00392348)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0196174, 0, -0.00392348)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0156939, 0, -0.00392348)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0549287, -0.0196174, -0.00392348)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0156939, -0.00392348, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0117704, -0.00392348, -0.00392348)
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
                        position: Qt.vector3d(-0.0549287, -0.0274643, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0117704, -0.176556, 0.00784695)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0117704, -0.156939, 0)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0117704, -0.0470817, -0.082393)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0549287, -0.0274643, -0.00392348)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0117704, -0.176556, 0.0117704)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0117704, -0.156939, -0.00392348)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0117704, -0.0470817, -0.0784695)
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
                qtmesh_gen3d_1_1794462446116_mesh_mat_material
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.987387, -0.0179617, -0.153593, 0.033951)
            }
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
                value: Qt.quaternion(0.96914, 0.214099, -0.0734172, -0.0976675)
            }
        }
        KeyframeGroup {
            target: joint_23
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.987424, -0.0198053, 0.153063, -0.034249)
            }
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
                value: Qt.quaternion(0.691186, 0.388654, -0.364676, 0.488079)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.711768, 0.466143, -0.387239, 0.355166)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.782948, 0.456485, -0.272337, 0.323181)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.81973, 0.487086, -0.210662, 0.215435)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.781686, 0.450674, 0.277305, -0.330094)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.817783, 0.484994, 0.213688, -0.224389)
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
            keyframeSource: "animations/joint_10_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.971091, 0.215826, 0.0536078, 0.0867616)
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
            keyframeSource: "animations/joint_29_rotation_0.qad"
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
                value: Qt.quaternion(0.710894, 0.457562, 0.393113, -0.361564)
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
                value: Qt.quaternion(0.691976, 0.375819, 0.370617, -0.492517)
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
                value: Qt.quaternion(0.985907, -0.0229892, -0.0293536, -0.163088)
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
                value: Qt.quaternion(0.993669, 0.0270056, -0.0196842, -0.107266)
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
                value: Qt.quaternion(0.986329, -0.0213838, 0.0263896, 0.161249)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.988165, -0.0272618, -0.146521, -0.0362995)
            }
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
                value: Qt.quaternion(0.944736, 0.213987, -0.0825991, -0.234222)
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
            target: joint_17
            property: "rotation"
            keyframeSource: "animations/joint_17_rotation_1.qad"
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
                value: Qt.quaternion(0.798693, 0.418715, -0.175314, 0.39501)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.79621, 0.478526, -0.291609, 0.228094)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.829708, 0.474335, -0.209375, 0.206769)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.819359, 0.511024, -0.218916, 0.139932)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.83731, 0.485645, 0.191987, -0.16187)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.823982, 0.519149, 0.200287, -0.10688)
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
                value: Qt.quaternion(0.913496, 0.379925, -0.139087, 0.0428582)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.955228, 0.207768, 0.073485, 0.197414)
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
            keyframeSource: "animations/joint_29_rotation_1.qad"
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
                value: Qt.quaternion(0.766346, 0.473556, 0.352065, -0.253986)
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
                value: Qt.quaternion(0.784699, 0.399694, 0.279946, -0.38226)
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
            keyframeSource: "animations/joint_43_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_40
            property: "rotation"
            keyframeSource: "animations/joint_40_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_37
            property: "rotation"
            keyframeSource: "animations/joint_37_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.0270056, -0.0196842, -0.107266)
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
                value: Qt.quaternion(0.986329, -0.0213838, 0.0263896, 0.161249)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.988165, -0.0272618, -0.146521, -0.0362995)
            }
        }
        KeyframeGroup {
            target: joint_39
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986636, -0.035629, -0.0098027, -0.158692)
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
                value: Qt.quaternion(0.944736, 0.213987, -0.0825992, -0.234222)
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
            target: joint_17
            property: "rotation"
            keyframeSource: "animations/joint_17_rotation_2.qad"
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
                value: Qt.quaternion(0.798693, 0.418715, -0.175314, 0.39501)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.79621, 0.478526, -0.291609, 0.228094)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.829708, 0.474335, -0.209375, 0.206769)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.819359, 0.511024, -0.218916, 0.139932)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.83731, 0.485645, 0.191987, -0.16187)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.823982, 0.519149, 0.200287, -0.10688)
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
                value: Qt.quaternion(0.913496, 0.379925, -0.139087, 0.0428582)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.955228, 0.207768, 0.0734849, 0.197414)
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
            keyframeSource: "animations/joint_29_rotation_2.qad"
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
                value: Qt.quaternion(0.766346, 0.473556, 0.352065, -0.253986)
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
                value: Qt.quaternion(0.784699, 0.399693, 0.279946, -0.38226)
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
