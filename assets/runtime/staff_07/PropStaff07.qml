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
        id: qtmesh_gen3d_1_1794634048073_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794634048073_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794634048073_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794634048073_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794634048073_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794634048073_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794634048073_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794634048073_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794634048073_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794634048073_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794634048073_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794634048073_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794634048073_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794634048073_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794634048073_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_07_trim,
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
            joint_22,
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
            joint_23,
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
            Qt.matrix4x4(1, 0, 0, -0.00187378, 0, 1, 0, 0.0879702, 0, 0, 1, -0.00780223, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00187378, 0, 1, 0, 0.0369997, 0, 0, 1, -0.011723, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00187378, 0, 1, 0, -0.0257332, 0, 0, 1, -0.0156438, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00187378, 0, 1, 0, -0.0963076, 0, 0, 1, -0.0234854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0373343, 0, 1, 0, -0.162961, 0, 0, 1, -0.0313271, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.119671, 0, 1, 0, -0.135516, 0, 0, 1, -0.0352479, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.21377, 0, 1, 0, -0.127674, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.343157, 0, 1, 0, -0.127674, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0410818, 0, 1, 0, -0.162961, 0, 0, 1, -0.0274063, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.123419, 0, 1, 0, -0.135516, 0, 0, 1, -0.0352479, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.217518, 0, 1, 0, -0.127674, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346905, 0, 1, 0, -0.127674, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0490967, 0, 1, 0, 0.115416, 0, 0, 1, -0.00780223, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0528442, 0, 1, 0, 0.115416, 0, 0, 1, -0.00780223, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.35884, 0, 1, 0, -0.143357, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.394127, 0, 1, 0, -0.143357, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.394127, 0, 1, 0, -0.127674, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.394127, 0, 1, 0, -0.111991, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362588, 0, 1, 0, -0.143357, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.397875, 0, 1, 0, -0.143357, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.397875, 0, 1, 0, -0.127674, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.397875, 0, 1, 0, -0.111991, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.393954, 0, 1, 0, -0.100228, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0647799, 0, 1, 0, 0.295773, 0, 0, 1, -0.0234854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0724483, 0, 1, 0, 0.295773, 0, 0, 1, -0.0234854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00187378, 0, 1, 0, -0.174724, 0, 0, 1, -0.0274063, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.370603, 0, 1, 0, -0.15512, 0, 0, 1, -0.0352479, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.413731, 0, 1, 0, -0.143357, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.417652, 0, 1, 0, -0.127674, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.413731, 0, 1, 0, -0.111991, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.390207, 0, 1, 0, -0.100228, 0, 0, 1, -0.0430895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.37435, 0, 1, 0, -0.15512, 0, 0, 1, -0.0352479, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.417479, 0, 1, 0, -0.143357, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.4214, 0, 1, 0, -0.127674, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.417479, 0, 1, 0, -0.111991, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.413558, 0, 1, 0, -0.0963076, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0804631, 0, 1, 0, 0.456526, 0, 0, 1, -0.0274063, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0842107, 0, 1, 0, 0.456526, 0, 0, 1, -0.0274063, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00187378, 0, 1, 0, -0.237457, 0, 0, 1, -0.0234854, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.378444, 0, 1, 0, -0.174724, 0, 0, 1, -0.0313271, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.433336, 0, 1, 0, -0.143357, 0, 0, 1, -0.0352479, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.437256, 0, 1, 0, -0.127674, 0, 0, 1, -0.0352479, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.433336, 0, 1, 0, -0.111991, 0, 0, 1, -0.0352479, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.409811, 0, 1, 0, -0.0963076, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.382192, 0, 1, 0, -0.174724, 0, 0, 1, -0.0313271, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.437083, 0, 1, 0, -0.143357, 0, 0, 1, -0.0352479, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.441004, 0, 1, 0, -0.127674, 0, 0, 1, -0.0352479, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.437083, 0, 1, 0, -0.111991, 0, 0, 1, -0.0352479, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.429241, 0, 1, 0, -0.0923868, 0, 0, 1, -0.0391687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0883047, 0, 1, 0, 0.495734, 0, 0, 1, 0.0666931, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0920523, 0, 1, 0, 0.495734, 0, 0, 1, 0.0666931, 0, 0, 0, 1)
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
                id: staff_07_trim
                objectName: "staff_07_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00187378, -0.0879702, 0.00780223)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0509705, 0.0039208)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0627329, 0.0039208)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0705745, 0.00784161)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0784161, 0.0039208)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0627329, -0.0039208)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.039208, 0.0666537, 0.00784161)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0823369, -0.0274456, 0.0039208)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0940993, -0.0078416, 0.00784161)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.129387, 0, 0)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0156832, 0.0156832, -0.0039208)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0117624, 0.0117624, -0.0039208)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00784162, 0.019604, -0.0039208)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0509704, 0.0156832, 0)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.019604, 0, -0.0039208)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.019604, 0, -0.0039208)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0509704, 0, 0)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0235249, 0, -0.0039208)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.019604, 0, -0.0039208)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0509704, -0.0156832, 0)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.019604, 0, -0.0039208)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.019604, 0, -0.0039208)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0470496, -0.0274456, 0)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.019604, -0.0039208, -0.0039208)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0156832, -0.0039208, 0)
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
                                    position: Qt.vector3d(0.039208, 0.0666537, 0.0039208)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0823369, -0.0274456, 0.00784161)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0940993, -0.0078416, 0.00784161)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.129387, 0, 0)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0156832, 0.0156832, -0.0039208)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0117624, 0.0117624, -0.0039208)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00784159, 0.019604, -0.0039208)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0509705, 0.0156832, 0)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.019604, 0, -0.0039208)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.019604, 0, -0.0039208)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0509705, 0, 0)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0235248, 0, -0.0039208)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.019604, 0, -0.0039208)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0509705, -0.0156832, 0)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.019604, 0, -0.0039208)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.019604, 0, -0.0039208)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0470496, -0.0274456, 0)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.019604, -0.0039208, -0.0039208)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0156832, -0.0039208, 0)
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
                        position: Qt.vector3d(-0.0509705, -0.0274456, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0156832, -0.180357, 0.0156832)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0156832, -0.160753, 0.0039208)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.00784161, -0.039208, -0.0940993)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0509705, -0.0274456, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.019604, -0.180357, 0.0156832)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0117624, -0.160753, 0.0039208)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.00784161, -0.039208, -0.0940993)
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
                qtmesh_gen3d_1_1794634048073_mesh_mat_material
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
            target: joint_23
            property: "rotation"
            keyframeSource: "animations/joint_23_rotation_0.qad"
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
                value: Qt.quaternion(0.994964, 0.0117033, 0.0964547, 0.0246226)
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
            keyframeSource: "animations/joint_30_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.749759, 0.369825, 0.392497, -0.383456)
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
                value: Qt.quaternion(0.749891, 0.367307, -0.39158, 0.386541)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.786847, 0.396651, -0.358596, 0.308139)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.792535, 0.391609, -0.345873, 0.314488)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.786847, 0.396651, -0.358596, 0.308137)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.792157, 0.394206, 0.346539, -0.311449)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.786475, 0.399154, 0.359276, -0.305048)
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
                value: Qt.quaternion(0.94687, 0.266535, 0.0939331, 0.153535)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.965535, 0.245622, 0.0142027, 0.0849126)
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
                value: Qt.quaternion(0.947666, 0.264737, -0.0944808, -0.151382)
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
                value: Qt.quaternion(0.786475, 0.399154, 0.359276, -0.305049)
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
                value: Qt.quaternion(0.985907, 0.0302064, -0.0326734, -0.16127)
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
            keyframeSource: "animations/joint_34_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.098556, -0.0441296, -0.0235368)
            }
        }
        KeyframeGroup {
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0304933, 0.0315408, 0.15884)
            }
        }
        KeyframeGroup {
            target: joint_23
            property: "rotation"
            keyframeSource: "animations/joint_23_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_21
            property: "rotation"
            keyframeSource: "animations/joint_21_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_18
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.97832, -0.0329231, -0.0203, 0.203455)
            }
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.98659, -0.0318659, 0.0154274, -0.15933)
            }
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990382, 0.0328864, -0.0230504, -0.132402)
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
                value: Qt.quaternion(0.960041, 0.184707, -0.0467751, -0.204978)
            }
        }
        KeyframeGroup {
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.835302, 0.372245, 0.311322, -0.258425)
            }
        }
        KeyframeGroup {
            target: joint_20
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.955732, -0.064512, -0.0328434, 0.285194)
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
                value: Qt.quaternion(0.8581, 0.380664, -0.213974, 0.270138)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.858354, 0.402949, -0.268944, 0.168906)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.845574, 0.399865, -0.296179, 0.193368)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.798868, 0.404735, -0.379322, 0.232623)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.85604, 0.413774, 0.278374, -0.135992)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.813253, 0.414775, 0.363389, -0.185823)
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
                value: Qt.quaternion(0.913045, 0.321441, 0.0993965, 0.230532)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.96562, 0.185686, 0.048927, 0.175231)
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
                value: Qt.quaternion(0.93029, 0.314501, -0.0839218, -0.169134)
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
                value: Qt.quaternion(0.832636, 0.407757, 0.32251, -0.19089)
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
                value: Qt.quaternion(0.985907, 0.0302063, -0.0326734, -0.16127)
            }
        }
        KeyframeGroup {
            target: joint_40
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.995514, -0.0306496, 0.00584671, -0.0893211)
            }
        }
        KeyframeGroup {
            target: joint_37
            property: "rotation"
            keyframeSource: "animations/joint_37_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            keyframeSource: "animations/joint_34_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.0985559, -0.0441296, -0.0235368)
            }
        }
        KeyframeGroup {
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0304934, 0.0315407, 0.15884)
            }
        }
        KeyframeGroup {
            target: joint_23
            property: "rotation"
            keyframeSource: "animations/joint_23_rotation_2.qad"
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
                value: Qt.quaternion(0.97832, -0.0329231, -0.0203, 0.203455)
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
                value: Qt.quaternion(0.98659, -0.0318659, 0.0154274, -0.15933)
            }
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990382, 0.0328863, -0.0230504, -0.132401)
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
                value: Qt.quaternion(0.960041, 0.184708, -0.046775, -0.204978)
            }
        }
        KeyframeGroup {
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.835302, 0.372245, 0.311322, -0.258425)
            }
        }
        KeyframeGroup {
            target: joint_20
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.955732, -0.064512, -0.0328434, 0.285194)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.99707, 0.0681719, 0.0305605, 0.0164587)
            }
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
                value: Qt.quaternion(0.8581, 0.380664, -0.213974, 0.270138)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.858354, 0.402949, -0.268944, 0.168906)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.845574, 0.399865, -0.296179, 0.193368)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.798868, 0.404735, -0.379322, 0.232623)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.85604, 0.413774, 0.278374, -0.135992)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.813253, 0.414775, 0.363389, -0.185823)
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
                value: Qt.quaternion(0.913045, 0.321441, 0.0993965, 0.230532)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.965619, 0.185686, 0.0489269, 0.175232)
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
                value: Qt.quaternion(0.93029, 0.314501, -0.0839219, -0.169134)
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
                value: Qt.quaternion(0.832636, 0.407757, 0.32251, -0.19089)
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
