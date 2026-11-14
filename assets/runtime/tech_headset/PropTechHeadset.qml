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
        id: qtmesh_gen3d_1_1794459110734_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794459110734_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794459110734_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794459110734_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794459110734_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794459110734_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794459110734_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794459110734_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794459110734_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794459110734_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794459110734_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794459110734_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794459110734_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794459110734_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794459110734_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            tech_headset,
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
            joint_32,
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
            joint_33,
            joint_37,
            joint_40,
            joint_43,
            joint_47,
            joint_51
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00217616, 0, 1, 0, 0.0570315, 0, 0, 1, -0.0219088, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00217616, 0, 1, 0, 0.0138792, 0, 0, 1, -0.0219088, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00217616, 0, 1, 0, -0.0410419, 0, 0, 1, -0.0258318, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00217616, 0, 1, 0, -0.103809, 0, 0, 1, -0.0297547, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0331303, 0, 1, 0, -0.15873, 0, 0, 1, -0.0297547, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.103743, 0, 1, 0, -0.135192, 0, 0, 1, -0.0336776, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.209662, 0, 1, 0, -0.123424, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.32735, 0, 1, 0, -0.123424, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0374826, 0, 1, 0, -0.15873, 0, 0, 1, -0.0297547, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.108095, 0, 1, 0, -0.135192, 0, 0, 1, -0.0336776, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.214015, 0, 1, 0, -0.123424, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331703, 0, 1, 0, -0.123424, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0448991, 0, 1, 0, 0.084492, 0, 0, 1, -0.0179859, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0492514, 0, 1, 0, 0.084492, 0, 0, 1, -0.0179859, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.343042, 0, 1, 0, -0.139115, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.374426, 0, 1, 0, -0.146961, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.374426, 0, 1, 0, -0.131269, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.374426, 0, 1, 0, -0.115578, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.370503, 0, 1, 0, -0.103809, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.347394, 0, 1, 0, -0.139115, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.378778, 0, 1, 0, -0.131269, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.382701, 0, 1, 0, -0.115578, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.378778, 0, 1, 0, -0.103809, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0605908, 0, 1, 0, 0.264947, 0, 0, 1, -0.0297547, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0649431, 0, 1, 0, 0.264947, 0, 0, 1, -0.0297547, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00217616, 0, 1, 0, -0.170499, 0, 0, 1, -0.0297547, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354811, 0, 1, 0, -0.150884, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.390117, 0, 1, 0, -0.150884, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.39404, 0, 1, 0, -0.131269, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.390117, 0, 1, 0, -0.115578, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.386194, 0, 1, 0, -0.099886, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.359163, 0, 1, 0, -0.150884, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.378778, 0, 1, 0, -0.146961, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.398393, 0, 1, 0, -0.131269, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.398393, 0, 1, 0, -0.115578, 0, 0, 1, -0.0493694, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.39447, 0, 1, 0, -0.099886, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0762825, 0, 1, 0, 0.42971, 0, 0, 1, -0.0376006, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0806349, 0, 1, 0, 0.42971, 0, 0, 1, -0.0376006, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00217616, 0, 1, 0, -0.217574, 0, 0, 1, -0.0258318, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362657, 0, 1, 0, -0.166576, 0, 0, 1, -0.0415235, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.401886, 0, 1, 0, -0.154807, 0, 0, 1, -0.0415235, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.409732, 0, 1, 0, -0.131269, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.405809, 0, 1, 0, -0.115578, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.397963, 0, 1, 0, -0.095963, 0, 0, 1, -0.0415235, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.367009, 0, 1, 0, -0.166576, 0, 0, 1, -0.0415235, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.39447, 0, 1, 0, -0.150884, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.414084, 0, 1, 0, -0.131269, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.414084, 0, 1, 0, -0.115578, 0, 0, 1, -0.0454464, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.406239, 0, 1, 0, -0.095963, 0, 0, 1, -0.0415235, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0958972, 0, 1, 0, 0.500323, 0, 0, 1, 0.0565499, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.10025, 0, 1, 0, 0.500323, 0, 0, 1, 0.0565499, 0, 0, 0, 1)
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
                id: tech_headset
                objectName: "tech_headset"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00217616, -0.0570315, 0.0219088)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0431523, 0)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0549211, 0.00392294)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.062767, 0.00392294)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0666899, 0)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0470752, -0.00392294)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0353064, 0.0549211, 0)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0706128, -0.0235376, 0.00392294)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.105919, -0.0117688, 0.0117688)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.117688, 0, 0.00392294)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0156917, 0.0156917, -0.00392294)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0117688, 0.0117688, 0)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00784585, 0.0156917, -0.00392293)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0470752, 0.0235376, 0)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0156918, 0.00392292, -0.00392294)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0117688, 0.00392294, -0.00392293)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0470752, 0.00784588, 0)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0196147, 0, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0156918, 0, -0.00392294)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0470752, -0.00784587, 0)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0156918, 0, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0156917, 0, -0.00392294)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0431523, -0.0196147, 0)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0156918, -0.00392294, -0.00392294)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0117688, -0.00392293, -0.00392293)
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
                                    position: Qt.vector3d(0.0353064, 0.0549211, 0)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0706128, -0.0235376, 0.00392294)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.105919, -0.0117688, 0.0117688)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.117688, 0, 0.00392294)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0156918, 0.0156917, -0.00392294)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0117688, 0.0117688, 0)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00784585, 0.0156917, -0.00392293)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0470752, 0.0235376, 0)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0156917, 0.00392292, -0.00392294)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0117688, 0.00392294, -0.00392293)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0470752, 0.00784588, 0)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0196147, 0, 0)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0156918, 0, -0.00392294)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0509982, -0.00784587, 0)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0156917, 0, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0156918, 0, -0.00392294)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0470752, -0.0196147, 0)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0156917, -0.00392294, -0.00392294)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0117688, -0.00392293, -0.00392293)
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
                        position: Qt.vector3d(-0.0470752, -0.0274605, -0.00392294)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0156917, -0.180455, 0.0117688)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0156917, -0.164763, 0.00784587)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0196147, -0.0706128, -0.0941505)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0470752, -0.0274605, -0.00392294)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0156917, -0.180455, 0.0117688)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0156917, -0.164763, 0.00784587)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0196147, -0.0706128, -0.0941505)
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
                qtmesh_gen3d_1_1794459110734_mesh_mat_material
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
            target: joint_33
            property: "rotation"
            keyframeSource: "animations/joint_33_rotation_0.qad"
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
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.810277, 0.437027, -0.326747, 0.213765)
            }
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
                value: Qt.quaternion(0.724265, 0.370584, -0.414334, 0.407965)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.812925, 0.366175, -0.276522, 0.358613)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.812925, 0.366175, -0.276522, 0.358613)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.81106, 0.368703, 0.27915, -0.35821)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.80959, 0.439428, 0.327231, -0.21068)
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
                value: Qt.quaternion(0.957159, 0.260801, -0.038644, 0.119737)
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
                value: Qt.quaternion(0.958086, 0.2583, 0.0378726, -0.117976)
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
                value: Qt.quaternion(0.81106, 0.368703, 0.27915, -0.35821)
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
                value: Qt.quaternion(0.724175, 0.372985, 0.415389, -0.404852)
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
                value: Qt.quaternion(0.985907, -0.0236832, -0.0320429, -0.162482)
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
            target: joint_33
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.984553, 0.0217375, -0.0355813, -0.170048)
            }
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.094849, -0.0526845, -0.0210405)
            }
        }
        KeyframeGroup {
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, -0.0225441, 0.0308162, 0.160303)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.982309, -0.0187181, 0.0154684, 0.185689)
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
                value: Qt.quaternion(0.980621, -0.0194528, -0.111181, -0.160133)
            }
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            keyframeSource: "animations/joint_36_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.850612, 0.435979, -0.281018, 0.0860864)
            }
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.942995, 0.243077, -0.18961, -0.12539)
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
                value: Qt.quaternion(0.950939, -0.0435841, 0.0935331, 0.291664)
            }
        }
        KeyframeGroup {
            target: joint_17
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.977046, -0.0226569, 0.108572, 0.181879)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.987469, -0.0343644, 0.0326427, 0.150527)
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
                value: Qt.quaternion(0.841466, 0.385553, -0.244376, 0.289073)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.876284, 0.387717, -0.184703, 0.218374)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.826707, 0.382685, -0.298098, 0.285035)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.838418, 0.397397, 0.284176, -0.241609)
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
                value: Qt.quaternion(0.925487, 0.328054, -0.0300675, 0.186949)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.9468, 0.239511, 0.19261, 0.0954212)
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
                value: Qt.quaternion(0.940785, 0.310579, 0.0468751, -0.127541)
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
                value: Qt.quaternion(0.854199, 0.38992, 0.241668, -0.244752)
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
                value: Qt.quaternion(0.815347, 0.375211, 0.340953, -0.279601)
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
            keyframeSource: "animations/joint_34_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_33
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.984553, 0.0217375, -0.0355812, -0.170048)
            }
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.094849, -0.0526845, -0.0210403)
            }
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
            keyframeSource: "animations/joint_36_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.850612, 0.435979, -0.281018, 0.0860865)
            }
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.942995, 0.243077, -0.189609, -0.12539)
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
                value: Qt.quaternion(0.950939, -0.0435843, 0.0935329, 0.291664)
            }
        }
        KeyframeGroup {
            target: joint_17
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.977046, -0.0226569, 0.108572, 0.181879)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.987469, -0.0343644, 0.0326427, 0.150527)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.99707, 0.0656084, 0.0364842, 0.0147204)
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
                value: Qt.quaternion(0.841467, 0.385553, -0.244376, 0.289073)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.876284, 0.387717, -0.184703, 0.218374)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.826707, 0.382685, -0.298098, 0.285035)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.838418, 0.397397, 0.284176, -0.241609)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.855063, 0.445955, 0.263161, -0.0271586)
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
                value: Qt.quaternion(0.925487, 0.328054, -0.0300673, 0.186949)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.9468, 0.239511, 0.19261, 0.0954212)
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
                value: Qt.quaternion(0.940785, 0.310579, 0.0468751, -0.127541)
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
                value: Qt.quaternion(0.854199, 0.38992, 0.241668, -0.244752)
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
                value: Qt.quaternion(0.815347, 0.375211, 0.340953, -0.279601)
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
