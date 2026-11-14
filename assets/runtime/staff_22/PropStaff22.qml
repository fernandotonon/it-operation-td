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
        id: qtmesh_gen3d_1_1794636051603_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794636051603_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794636051603_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794636051603_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794636051603_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794636051603_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794636051603_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794636051603_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794636051603_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794636051603_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794636051603_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794636051603_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794636051603_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794636051603_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794636051603_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_22_trim,
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
            Qt.matrix4x4(1, 0, 0, -0.00836949, 0, 1, 0, 0.0607028, 0, 0, 1, -0.0189931, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00836949, 0, 1, 0, 0.0136806, 0, 0, 1, -0.0189931, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00836949, 0, 1, 0, -0.0411787, 0, 0, 1, -0.0229117, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00836949, 0, 1, 0, -0.103875, 0, 0, 1, -0.0268302, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0268972, 0, 1, 0, -0.158734, 0, 0, 1, -0.0307487, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.101349, 0, 1, 0, -0.131305, 0, 0, 1, -0.0346672, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.17972, 0, 1, 0, -0.123468, 0, 0, 1, -0.0542598, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.277683, 0, 1, 0, -0.127386, 0, 0, 1, -0.0699339, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0436362, 0, 1, 0, -0.158734, 0, 0, 1, -0.0268302, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.118088, 0, 1, 0, -0.131305, 0, 0, 1, -0.0346672, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.19254, 0, 1, 0, -0.123468, 0, 0, 1, -0.0542598, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.282666, 0, 1, 0, -0.127386, 0, 0, 1, -0.0699339, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0386528, 0, 1, 0, 0.0881325, 0, 0, 1, -0.0189931, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0593103, 0, 1, 0, 0.0881325, 0, 0, 1, -0.0150746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.293357, 0, 1, 0, -0.14306, 0, 0, 1, -0.0738524, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.332542, 0, 1, 0, -0.146979, 0, 0, 1, -0.0895265, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.332542, 0, 1, 0, -0.131305, 0, 0, 1, -0.0895265, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.332542, 0, 1, 0, -0.115631, 0, 0, 1, -0.0895265, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.332542, 0, 1, 0, -0.103875, 0, 0, 1, -0.085608, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.29834, 0, 1, 0, -0.14306, 0, 0, 1, -0.077771, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.333607, 0, 1, 0, -0.146979, 0, 0, 1, -0.0973636, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.333607, 0, 1, 0, -0.131305, 0, 0, 1, -0.093445, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.337525, 0, 1, 0, -0.115631, 0, 0, 1, -0.093445, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.337525, 0, 1, 0, -0.103875, 0, 0, 1, -0.0895265, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0582454, 0, 1, 0, 0.264466, 0, 0, 1, -0.0229117, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0749844, 0, 1, 0, 0.264466, 0, 0, 1, -0.0229117, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00836949, 0, 1, 0, -0.174408, 0, 0, 1, -0.0268302, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.309031, 0, 1, 0, -0.154816, 0, 0, 1, -0.077771, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.348216, 0, 1, 0, -0.146979, 0, 0, 1, -0.0973636, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.352135, 0, 1, 0, -0.131305, 0, 0, 1, -0.0973636, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.348216, 0, 1, 0, -0.115631, 0, 0, 1, -0.093445, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.348216, 0, 1, 0, -0.0999565, 0, 0, 1, -0.0895265, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.314014, 0, 1, 0, -0.154816, 0, 0, 1, -0.085608, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.349281, 0, 1, 0, -0.146979, 0, 0, 1, -0.101282, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.353199, 0, 1, 0, -0.131305, 0, 0, 1, -0.101282, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.353199, 0, 1, 0, -0.115631, 0, 0, 1, -0.0973636, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.349281, 0, 1, 0, -0.0999565, 0, 0, 1, -0.093445, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0700009, 0, 1, 0, 0.440799, 0, 0, 1, -0.0307487, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0906584, 0, 1, 0, 0.440799, 0, 0, 1, -0.0346672, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00836949, 0, 1, 0, -0.229268, 0, 0, 1, -0.0189931, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.320786, 0, 1, 0, -0.174408, 0, 0, 1, -0.077771, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.367809, 0, 1, 0, -0.150897, 0, 0, 1, -0.101282, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.371727, 0, 1, 0, -0.131305, 0, 0, 1, -0.101282, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.367809, 0, 1, 0, -0.115631, 0, 0, 1, -0.0973636, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.359972, 0, 1, 0, -0.0999565, 0, 0, 1, -0.093445, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.321851, 0, 1, 0, -0.174408, 0, 0, 1, -0.0895265, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.364955, 0, 1, 0, -0.150897, 0, 0, 1, -0.105201, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.372792, 0, 1, 0, -0.131305, 0, 0, 1, -0.105201, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.368874, 0, 1, 0, -0.115631, 0, 0, 1, -0.105201, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.361036, 0, 1, 0, -0.0999565, 0, 0, 1, -0.0973636, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0974306, 0, 1, 0, 0.49174, 0, 0, 1, 0.0437032, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.11417, 0, 1, 0, 0.49174, 0, 0, 1, 0.0437032, 0, 0, 0, 1)
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
                id: staff_22_trim
                objectName: "staff_22_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00836949, -0.0607028, 0.0189931)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0470223, 0)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0548593, 0.00391852)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0626964, 0.00391852)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0705334, 0)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0548593, -0.00783704)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0352667, 0.0548593, 0.00391852)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0744519, -0.0274297, 0.00391852)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0783704, -0.00783705, 0.0195926)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.0979631, 0.00391852, 0.0156741)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0156741, 0.0156741, 0.00391852)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0156741, 0.0117556, 0.00391852)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.0117556, 0.0195926, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0548593, 0.0195926, 0.0195926)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0156741, 0, 0.00783704)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0195926, 0.00391853, 0.00391852)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0548593, 0.00391853, 0.0195926)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0195926, 0, 0.00783704)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0195926, 0, 0.00391852)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0548593, -0.0117556, 0.0195926)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0156741, 0, 0.00391852)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0195926, 0, 0.00391852)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0548593, -0.0235111, 0.0156741)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0156741, -0.00391852, 0.00391852)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0117556, 0, 0.00391852)
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
                                    position: Qt.vector3d(0.0352667, 0.0548593, 0)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0744519, -0.0274297, 0.00783704)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0744519, -0.00783705, 0.0195926)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.090126, 0.00391852, 0.0156741)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0156741, 0.0156741, 0.00783704)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0156741, 0.0117556, 0.00783705)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00783703, 0.0195926, 0.00391852)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0509408, 0.0195926, 0.0274297)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0156741, 0, 0.00391852)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0156741, 0.00391853, 0.00391852)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0509408, 0.00391853, 0.0235111)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0195926, 0, 0.00783704)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0195926, 0, 0.00391852)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0548593, -0.0117556, 0.0235111)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0156741, 0, 0.00391852)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0156741, 0, 0.00783704)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0548593, -0.0235111, 0.0195926)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0117556, -0.00391852, 0.00391852)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0117556, 0, 0.00391852)
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
                        position: Qt.vector3d(-0.0470223, -0.0274297, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0195926, -0.176333, 0.00391852)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0117556, -0.176333, 0.00783704)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0274297, -0.0509408, -0.0744519)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0509408, -0.0274297, -0.00391852)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0156741, -0.176333, 0.00783704)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0156741, -0.176333, 0.0117556)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0235111, -0.0509408, -0.0783704)
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
                qtmesh_gen3d_1_1794636051603_mesh_mat_material
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
                value: Qt.quaternion(0.960818, 0.182267, -0.200606, -0.0580091)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986376, 0.0239104, 0.132866, 0.0940033)
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
                value: Qt.quaternion(0.671932, 0.167875, -0.451864, 0.562267)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.732227, 0.265059, -0.433877, 0.453143)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.75997, 0.233704, -0.38334, 0.469977)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.732227, 0.265059, -0.433877, 0.453143)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.791344, 0.252729, 0.301653, -0.467877)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.803166, 0.233108, 0.268483, -0.478019)
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
                value: Qt.quaternion(0.944944, 0.319693, 0.0460606, -0.0524903)
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
                value: Qt.quaternion(0.940871, 0.316435, -0.0402196, 0.114076)
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
                value: Qt.quaternion(0.769145, 0.283755, 0.354586, -0.449631)
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
                value: Qt.quaternion(0.714817, 0.227514, 0.394289, -0.530858)
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
                value: Qt.quaternion(0.985907, 0.0858911, -0.032032, -0.139945)
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
                value: Qt.quaternion(0.993669, 0.0418194, -0.0300653, -0.0998495)
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
                value: Qt.quaternion(0.986329, 0.085137, 0.0308749, 0.137671)
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
                value: Qt.quaternion(0.97832, 0.0480073, -0.0102432, 0.201197)
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
                value: Qt.quaternion(0.979854, 0.0563917, 0.115354, -0.152969)
            }
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.991626, 0.0274766, -0.0864779, -0.0918947)
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
                value: Qt.quaternion(0.937916, 0.197129, -0.209284, -0.194047)
            }
        }
        KeyframeGroup {
            target: joint_23
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.983926, 0.0369938, -0.0411163, 0.169794)
            }
        }
        KeyframeGroup {
            target: joint_20
            property: "rotation"
            keyframeSource: "animations/joint_20_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_17
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.989088, 0.0341028, 0.0852043, 0.11525)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.953779, 0.0813244, 0.118613, 0.263861)
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
                value: Qt.quaternion(0.786069, 0.262391, -0.282185, 0.483341)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.804204, 0.345596, -0.343827, 0.340005)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768446, 0.282779, -0.401286, 0.410483)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.784425, 0.334985, -0.384023, 0.353537)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.84718, 0.354816, 0.22759, -0.32341)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.827577, 0.309216, 0.268144, -0.384188)
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
                value: Qt.quaternion(0.953346, 0.190055, 0.212831, 0.098554)
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
                value: Qt.quaternion(0.920513, 0.366531, -0.0362731, 0.130366)
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
                value: Qt.quaternion(0.812765, 0.341755, 0.31581, -0.350543)
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
                value: Qt.quaternion(0.800228, 0.289091, 0.31448, -0.420907)
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
                value: Qt.quaternion(0.985907, 0.0858911, -0.032032, -0.139945)
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
                value: Qt.quaternion(0.993669, 0.0418195, -0.0300653, -0.0998495)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.985343, 0.0434294, 0.0151113, -0.164272)
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
                value: Qt.quaternion(0.986329, 0.0851371, 0.0308747, 0.137671)
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
            keyframeSource: "animations/joint_42_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_39
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.979854, 0.0563916, 0.115354, -0.152969)
            }
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.991626, 0.0274766, -0.0864778, -0.0918948)
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
                value: Qt.quaternion(0.937916, 0.197129, -0.209284, -0.194047)
            }
        }
        KeyframeGroup {
            target: joint_23
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.983926, 0.0369936, -0.0411164, 0.169794)
            }
        }
        KeyframeGroup {
            target: joint_20
            property: "rotation"
            keyframeSource: "animations/joint_20_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_17
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.989088, 0.0341029, 0.0852043, 0.11525)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.953779, 0.0813245, 0.118613, 0.263861)
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
                value: Qt.quaternion(0.786069, 0.262391, -0.282185, 0.483341)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.804203, 0.345596, -0.343827, 0.340005)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.768446, 0.282779, -0.401286, 0.410483)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.784425, 0.334985, -0.384023, 0.353537)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.84718, 0.354816, 0.22759, -0.32341)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.827577, 0.309216, 0.268144, -0.384188)
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
                value: Qt.quaternion(0.953346, 0.190055, 0.212831, 0.0985541)
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
                value: Qt.quaternion(0.920513, 0.366531, -0.0362731, 0.130366)
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
                value: Qt.quaternion(0.812765, 0.341755, 0.315811, -0.350543)
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
                value: Qt.quaternion(0.800228, 0.289091, 0.31448, -0.420907)
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
