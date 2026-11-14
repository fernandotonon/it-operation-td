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
        id: qtmesh_gen3d_1_1794640823759_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794640823759_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794640823759_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794640823759_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794640823759_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794640823759_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794640823759_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794640823759_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794640823759_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794640823759_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794640823759_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794640823759_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794640823759_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794640823759_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794640823759_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
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
            Qt.matrix4x4(1, 0, 0, -0.00187452, 0, 1, 0, 0.0956972, 0, 0, 1, -0.0233625, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00187452, 0, 1, 0, 0.0408162, 0, 0, 1, -0.0233625, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00187452, 0, 1, 0, -0.021905, 0, 0, 1, -0.0272826, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00187452, 0, 1, 0, -0.0924663, 0, 0, 1, -0.0312027, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0334061, 0, 1, 0, -0.159108, 0, 0, 1, -0.0351228, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.100047, 0, 1, 0, -0.131667, 0, 0, 1, -0.0390428, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.182369, 0, 1, 0, -0.123827, 0, 0, 1, -0.0586432, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.280371, 0, 1, 0, -0.123827, 0, 0, 1, -0.0821637, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0371552, 0, 1, 0, -0.159108, 0, 0, 1, -0.0351228, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.103796, 0, 1, 0, -0.131667, 0, 0, 1, -0.0390428, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.186118, 0, 1, 0, -0.123827, 0, 0, 1, -0.0586432, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.28412, 0, 1, 0, -0.123827, 0, 0, 1, -0.0821637, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0530065, 0, 1, 0, 0.123138, 0, 0, 1, -0.0194425, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0567556, 0, 1, 0, 0.123138, 0, 0, 1, -0.0194425, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.292131, 0, 1, 0, -0.139507, 0, 0, 1, -0.0860837, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327412, 0, 1, 0, -0.143427, 0, 0, 1, -0.101764, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327412, 0, 1, 0, -0.127747, 0, 0, 1, -0.101764, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327412, 0, 1, 0, -0.112067, 0, 0, 1, -0.097844, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.323492, 0, 1, 0, -0.0963864, 0, 0, 1, -0.0939239, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.29588, 0, 1, 0, -0.139507, 0, 0, 1, -0.0860837, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331161, 0, 1, 0, -0.143427, 0, 0, 1, -0.101764, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331161, 0, 1, 0, -0.127747, 0, 0, 1, -0.097844, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.335081, 0, 1, 0, -0.112067, 0, 0, 1, -0.097844, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331161, 0, 1, 0, -0.0963864, 0, 0, 1, -0.0939239, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0686868, 0, 1, 0, 0.295621, 0, 0, 1, -0.0429629, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0724358, 0, 1, 0, 0.295621, 0, 0, 1, -0.0390428, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00187452, 0, 1, 0, -0.170868, 0, 0, 1, -0.0351228, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.303891, 0, 1, 0, -0.151267, 0, 0, 1, -0.0900038, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.343092, 0, 1, 0, -0.147347, 0, 0, 1, -0.105684, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.347012, 0, 1, 0, -0.127747, 0, 0, 1, -0.105684, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.347012, 0, 1, 0, -0.108147, 0, 0, 1, -0.101764, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.343092, 0, 1, 0, -0.0924663, 0, 0, 1, -0.0939239, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.30764, 0, 1, 0, -0.151267, 0, 0, 1, -0.0900038, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346841, 0, 1, 0, -0.147347, 0, 0, 1, -0.105684, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350761, 0, 1, 0, -0.127747, 0, 0, 1, -0.105684, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350761, 0, 1, 0, -0.108147, 0, 0, 1, -0.101764, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346841, 0, 1, 0, -0.0924663, 0, 0, 1, -0.0939239, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0843671, 0, 1, 0, 0.444584, 0, 0, 1, -0.046883, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0881161, 0, 1, 0, 0.444584, 0, 0, 1, -0.0429629, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00187452, 0, 1, 0, -0.225749, 0, 0, 1, -0.0272826, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.311731, 0, 1, 0, -0.170868, 0, 0, 1, -0.0939239, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362692, 0, 1, 0, -0.151267, 0, 0, 1, -0.109604, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.366612, 0, 1, 0, -0.127747, 0, 0, 1, -0.109604, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362692, 0, 1, 0, -0.104227, 0, 0, 1, -0.101764, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354852, 0, 1, 0, -0.0846262, 0, 0, 1, -0.0939239, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.31548, 0, 1, 0, -0.170868, 0, 0, 1, -0.0939239, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366441, 0, 1, 0, -0.151267, 0, 0, 1, -0.109604, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.370361, 0, 1, 0, -0.127747, 0, 0, 1, -0.109604, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366441, 0, 1, 0, -0.104227, 0, 0, 1, -0.101764, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358601, 0, 1, 0, -0.0846262, 0, 0, 1, -0.0939239, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.100047, 0, 1, 0, 0.495545, 0, 0, 1, 0.0393586, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.103796, 0, 1, 0, 0.495545, 0, 0, 1, 0.0393586, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: typing
        objectName: "Typing"
        Node {
            id: staff_32_trim
            objectName: "staff_32_trim"
            Node {
                id: hips
                objectName: "Hips"
                position: Qt.vector3d(0.00187452, -0.0956972, 0.0233625)
                Node {
                    id: spine
                    objectName: "Spine"
                    position: Qt.vector3d(0, 0.054881, 0)
                    Node {
                        id: spine1
                        objectName: "Spine1"
                        position: Qt.vector3d(0, 0.0627212, 0.00392007)
                        Node {
                            id: spine2
                            objectName: "Spine2"
                            position: Qt.vector3d(0, 0.0705613, 0.00392007)
                            Node {
                                id: neck
                                objectName: "Neck"
                                position: Qt.vector3d(0, 0.0784015, 0.00392007)
                                Node {
                                    id: head
                                    objectName: "Head"
                                    position: Qt.vector3d(0, 0.054881, -0.00784015)
                                }
                            }
                            Node {
                                id: leftShoulder
                                objectName: "LeftShoulder"
                                position: Qt.vector3d(-0.0352807, 0.0666413, 0.00392007)
                                Node {
                                    id: leftArm
                                    objectName: "LeftArm"
                                    position: Qt.vector3d(-0.0666413, -0.0274405, 0.00392007)
                                    Node {
                                        id: leftForeArm
                                        objectName: "LeftForeArm"
                                        position: Qt.vector3d(-0.0823215, -0.00784015, 0.0196004)
                                        Node {
                                            id: leftHand
                                            objectName: "LeftHand"
                                            position: Qt.vector3d(-0.0980019, 0, 0.0235204)
                                            Node {
                                                id: joint_10
                                                objectName: "joint_10"
                                                position: Qt.vector3d(-0.0117602, 0.0156803, 0.00392008)
                                                Node {
                                                    id: joint_11
                                                    objectName: "joint_11"
                                                    position: Qt.vector3d(-0.0117602, 0.0117602, 0.00392007)
                                                    Node {
                                                        id: joint_12
                                                        objectName: "joint_12"
                                                        position: Qt.vector3d(-0.00784016, 0.0196004, 0.00392007)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_13
                                                objectName: "joint_13"
                                                position: Qt.vector3d(-0.0470409, 0.0196004, 0.0196004)
                                                Node {
                                                    id: joint_14
                                                    objectName: "joint_14"
                                                    position: Qt.vector3d(-0.0156803, 0.00392008, 0.00392008)
                                                    Node {
                                                        id: joint_15
                                                        objectName: "joint_15"
                                                        position: Qt.vector3d(-0.0196004, 0.00392008, 0.00392007)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_16
                                                objectName: "joint_16"
                                                position: Qt.vector3d(-0.0470409, 0.00392007, 0.0196004)
                                                Node {
                                                    id: joint_17
                                                    objectName: "joint_17"
                                                    position: Qt.vector3d(-0.0196004, 0, 0.00392008)
                                                    Node {
                                                        id: joint_18
                                                        objectName: "joint_18"
                                                        position: Qt.vector3d(-0.0196004, 0, 0.00392007)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_19
                                                objectName: "joint_19"
                                                position: Qt.vector3d(-0.0470409, -0.0117602, 0.0156803)
                                                Node {
                                                    id: joint_20
                                                    objectName: "joint_20"
                                                    position: Qt.vector3d(-0.0196004, -0.00392007, 0.00392007)
                                                    Node {
                                                        id: joint_21
                                                        objectName: "joint_21"
                                                        position: Qt.vector3d(-0.0156803, -0.00392008, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_22
                                                objectName: "joint_22"
                                                position: Qt.vector3d(-0.0431208, -0.0274405, 0.0117602)
                                                Node {
                                                    id: joint_23
                                                    objectName: "joint_23"
                                                    position: Qt.vector3d(-0.0196004, -0.00392007, 0)
                                                    Node {
                                                        id: joint_24
                                                        objectName: "joint_24"
                                                        position: Qt.vector3d(-0.0117602, -0.00784015, 0)
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
                                position: Qt.vector3d(0.0352807, 0.0666413, 0.00392007)
                                Node {
                                    id: rightArm
                                    objectName: "RightArm"
                                    position: Qt.vector3d(0.0666413, -0.0274405, 0.00392007)
                                    Node {
                                        id: rightForeArm
                                        objectName: "RightForeArm"
                                        position: Qt.vector3d(0.0823216, -0.00784015, 0.0196004)
                                        Node {
                                            id: rightHand
                                            objectName: "RightHand"
                                            position: Qt.vector3d(0.0980019, 0, 0.0235204)
                                            Node {
                                                id: joint_29
                                                objectName: "joint_29"
                                                position: Qt.vector3d(0.0117602, 0.0156803, 0.00392008)
                                                Node {
                                                    id: joint_30
                                                    objectName: "joint_30"
                                                    position: Qt.vector3d(0.0117602, 0.0117602, 0.00392007)
                                                    Node {
                                                        id: joint_31
                                                        objectName: "joint_31"
                                                        position: Qt.vector3d(0.00784016, 0.0196004, 0.00392007)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_32
                                                objectName: "joint_32"
                                                position: Qt.vector3d(0.0470409, 0.0196004, 0.0196004)
                                                Node {
                                                    id: joint_33
                                                    objectName: "joint_33"
                                                    position: Qt.vector3d(0.0156803, 0.00392008, 0.00392008)
                                                    Node {
                                                        id: joint_34
                                                        objectName: "joint_34"
                                                        position: Qt.vector3d(0.0196004, 0.00392008, 0.00392007)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_35
                                                objectName: "joint_35"
                                                position: Qt.vector3d(0.0470409, 0.00392007, 0.0156803)
                                                Node {
                                                    id: joint_36
                                                    objectName: "joint_36"
                                                    position: Qt.vector3d(0.0196004, 0, 0.00784015)
                                                    Node {
                                                        id: joint_37
                                                        objectName: "joint_37"
                                                        position: Qt.vector3d(0.0196004, 0, 0.00392007)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_38
                                                objectName: "joint_38"
                                                position: Qt.vector3d(0.050961, -0.0117602, 0.0156803)
                                                Node {
                                                    id: joint_39
                                                    objectName: "joint_39"
                                                    position: Qt.vector3d(0.0156803, -0.00392007, 0.00392007)
                                                    Node {
                                                        id: joint_40
                                                        objectName: "joint_40"
                                                        position: Qt.vector3d(0.0156803, -0.00392008, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_41
                                                objectName: "joint_41"
                                                position: Qt.vector3d(0.0470409, -0.0274405, 0.0117602)
                                                Node {
                                                    id: joint_42
                                                    objectName: "joint_42"
                                                    position: Qt.vector3d(0.0156803, -0.00392007, 0)
                                                    Node {
                                                        id: joint_43
                                                        objectName: "joint_43"
                                                        position: Qt.vector3d(0.0117602, -0.00784015, 0)
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
                    position: Qt.vector3d(-0.054881, -0.0274405, -0.00392007)
                    Node {
                        id: leftLeg
                        objectName: "LeftLeg"
                        position: Qt.vector3d(-0.0156803, -0.172483, 0.0235204)
                        Node {
                            id: leftFoot
                            objectName: "LeftFoot"
                            position: Qt.vector3d(-0.0156803, -0.148963, 0.00392007)
                            Node {
                                id: joint_47
                                objectName: "joint_47"
                                position: Qt.vector3d(-0.0156803, -0.050961, -0.0862416)
                            }
                        }
                    }
                }
                Node {
                    id: rightUpLeg
                    objectName: "RightUpLeg"
                    position: Qt.vector3d(0.054881, -0.0274405, -0.00392007)
                    Node {
                        id: rightLeg
                        objectName: "RightLeg"
                        position: Qt.vector3d(0.0156803, -0.172483, 0.0196004)
                        Node {
                            id: rightFoot
                            objectName: "RightFoot"
                            position: Qt.vector3d(0.0156803, -0.148963, 0.00392007)
                            Node {
                                id: joint_51
                                objectName: "joint_51"
                                position: Qt.vector3d(0.0156803, -0.050961, -0.0823216)
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
                qtmesh_gen3d_1_1794640823759_mesh_mat_material
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
                value: Qt.quaternion(0.977988, 0.188287, -0.0887784, 0.0143542)
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
                value: Qt.quaternion(0.628035, 0.351454, -0.461048, 0.519121)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.674115, 0.297172, -0.375067, 0.562657)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.752903, 0.314768, -0.277389, 0.507065)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.778915, 0.396421, -0.278154, 0.398463)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.7235, 0.364036, 0.34492, -0.474399)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.777848, 0.400515, 0.277641, -0.396807)
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
                value: Qt.quaternion(0.936615, 0.344414, -0.0379907, -0.0518419)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            keyframeSource: "animations/joint_11_rotation_0.qad"
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
                value: Qt.quaternion(0.937839, 0.341143, 0.0363071, 0.0525512)
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
                value: Qt.quaternion(0.677358, 0.322515, 0.383681, -0.538479)
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
                value: Qt.quaternion(0.63972, 0.366089, 0.452862, -0.501651)
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
            keyframeSource: "animations/joint_43_rotation_1.qad"
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
                value: Qt.quaternion(0.985343, 0.0390492, 0.0103832, -0.165732)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.0466457, -0.0221102, -0.0997899)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.985422, 0.089333, -0.101971, -0.102783)
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
                value: Qt.quaternion(0.968368, 0.192345, -0.0996435, -0.123849)
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
                value: Qt.quaternion(0.756274, 0.39859, -0.285017, 0.433521)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.760227, 0.366468, -0.275978, 0.459992)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.804213, 0.374821, -0.211513, 0.409894)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.785455, 0.437084, -0.28725, 0.330915)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.792431, 0.443947, 0.260247, -0.327468)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.794648, 0.46231, 0.263163, -0.292489)
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
            keyframeSource: "animations/joint_10_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.973174, 0.178948, 0.106759, 0.0975284)
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
                value: Qt.quaternion(0.916878, 0.391788, 0.0491762, 0.0584725)
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
                value: Qt.quaternion(0.736087, 0.377138, 0.339771, -0.447771)
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
                value: Qt.quaternion(0.737331, 0.405367, 0.369689, -0.394146)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.985343, 0.0390492, 0.0103831, -0.165732)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.0466456, -0.0221103, -0.0997899)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.97832, 0.0479799, -0.0127496, 0.20106)
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
            keyframeSource: "animations/joint_39_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.985422, 0.0893329, -0.101971, -0.102783)
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
                value: Qt.quaternion(0.968368, 0.192345, -0.0996435, -0.123849)
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
                value: Qt.quaternion(0.756274, 0.39859, -0.285017, 0.433521)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.760227, 0.366468, -0.275978, 0.459992)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.804213, 0.374821, -0.211513, 0.409894)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.785455, 0.437084, -0.28725, 0.330915)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.792431, 0.443947, 0.260248, -0.327468)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.794648, 0.462309, 0.263163, -0.292489)
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
            keyframeSource: "animations/joint_10_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.973174, 0.178948, 0.106759, 0.0975285)
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
                value: Qt.quaternion(0.916878, 0.391788, 0.0491762, 0.0584724)
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
                value: Qt.quaternion(0.736087, 0.377138, 0.339771, -0.447771)
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
                value: Qt.quaternion(0.737331, 0.405367, 0.369688, -0.394146)
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
