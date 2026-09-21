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
        id: qtmesh_gen3d_1_1789952303230_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1789952303230_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789952303230_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1789952303230_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1789952303230_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789952303230_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1789952303230_normal_png_texture
        objectName: "qtmesh_gen3d_1_1789952303230_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789952303230_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1789952303230_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1789952303230_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1789952303230_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1789952303230_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1789952303230_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1789952303230_normal_png_texture
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
            joint_19,
            joint_22,
            joint_29,
            joint_32,
            joint_35,
            joint_41,
            leftLeg,
            rightLeg,
            neck,
            joint_11,
            joint_13,
            joint_17,
            joint_20,
            joint_23,
            joint_30,
            joint_33,
            joint_36,
            joint_38,
            joint_42,
            leftFoot,
            rightFoot,
            head,
            joint_12,
            joint_14,
            joint_18,
            joint_21,
            joint_24,
            joint_31,
            joint_34,
            joint_37,
            joint_39,
            joint_43,
            joint_47,
            joint_51
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, -0.0025383, 0, 1, 0, 0.0454034, 0, 0, 1, -0.0201557, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0025383, 0, 1, 0, 0.00237347, 0, 0, 1, -0.0201557, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0025383, 0, 1, 0, -0.0523919, 0, 0, 1, -0.0240675, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0025383, 0, 1, 0, -0.114981, 0, 0, 1, -0.0279793, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0365798, 0, 1, 0, -0.169746, 0, 0, 1, -0.0279793, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0416564, 0, 1, 0, -0.169746, 0, 0, 1, -0.0279793, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.114816, 0, 1, 0, -0.138452, 0, 0, 1, -0.0318911, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.119893, 0, 1, 0, -0.138452, 0, 0, 1, -0.0318911, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.204788, 0, 1, 0, -0.126716, 0, 0, 1, -0.0436266, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.209864, 0, 1, 0, -0.126716, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.329966, 0, 1, 0, -0.126716, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.335042, 0, 1, 0, -0.126716, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0483153, 0, 1, 0, 0.0766979, 0, 0, 1, -0.0162439, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0533919, 0, 1, 0, 0.0766979, 0, 0, 1, -0.0162439, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.341701, 0, 1, 0, -0.138452, 0, 0, 1, -0.0436266, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.376908, 0, 1, 0, -0.130628, 0, 0, 1, -0.0514502, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.380819, 0, 1, 0, -0.118893, 0, 0, 1, -0.0514502, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.376908, 0, 1, 0, -0.107157, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346778, 0, 1, 0, -0.138452, 0, 0, 1, -0.0436266, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381984, 0, 1, 0, -0.146275, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381984, 0, 1, 0, -0.130628, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381984, 0, 1, 0, -0.107157, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0639625, 0, 1, 0, 0.268377, 0, 0, 1, -0.0318911, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0690391, 0, 1, 0, 0.268377, 0, 0, 1, -0.0318911, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0025383, 0, 1, 0, -0.181482, 0, 0, 1, -0.0279793, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.353437, 0, 1, 0, -0.150187, 0, 0, 1, -0.0397148, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.376908, 0, 1, 0, -0.146275, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.396467, 0, 1, 0, -0.13454, 0, 0, 1, -0.0514502, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.396467, 0, 1, 0, -0.118893, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.392555, 0, 1, 0, -0.103245, 0, 0, 1, -0.0436266, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358513, 0, 1, 0, -0.150187, 0, 0, 1, -0.0397148, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.397631, 0, 1, 0, -0.150187, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.401543, 0, 1, 0, -0.13454, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.385896, 0, 1, 0, -0.118893, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.397631, 0, 1, 0, -0.103245, 0, 0, 1, -0.0436266, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.075698, 0, 1, 0, 0.444408, 0, 0, 1, -0.035803, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0807746, 0, 1, 0, 0.444408, 0, 0, 1, -0.035803, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0025383, 0, 1, 0, -0.240159, 0, 0, 1, -0.0240675, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.357349, 0, 1, 0, -0.165834, 0, 0, 1, -0.035803, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.392555, 0, 1, 0, -0.150187, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.416026, 0, 1, 0, -0.138452, 0, 0, 1, -0.0514502, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.412114, 0, 1, 0, -0.118893, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.408202, 0, 1, 0, -0.0993337, 0, 0, 1, -0.0397148, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362425, 0, 1, 0, -0.165834, 0, 0, 1, -0.035803, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.413279, 0, 1, 0, -0.154099, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.421102, 0, 1, 0, -0.138452, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.401543, 0, 1, 0, -0.118893, 0, 0, 1, -0.0475384, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.413279, 0, 1, 0, -0.0993337, 0, 0, 1, -0.0397148, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0835216, 0, 1, 0, 0.499174, 0, 0, 1, 0.0541687, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0885982, 0, 1, 0, 0.499174, 0, 0, 1, 0.0541687, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: a5
        objectName: "a5"
        Node {
            id: tech_headset_trim
            objectName: "tech_headset_trim"
            Node {
                id: hips
                objectName: "Hips"
                position: Qt.vector3d(0.0025383, -0.0454034, 0.0201557)
                Node {
                    id: spine
                    objectName: "Spine"
                    position: Qt.vector3d(0, 0.0430299, 0)
                    Node {
                        id: spine1
                        objectName: "Spine1"
                        position: Qt.vector3d(0, 0.0547654, 0.00391181)
                        Node {
                            id: spine2
                            objectName: "Spine2"
                            position: Qt.vector3d(0, 0.062589, 0.00391181)
                            Node {
                                id: neck
                                objectName: "Neck"
                                position: Qt.vector3d(0, 0.0665008, 0)
                                Node {
                                    id: head
                                    objectName: "Head"
                                    position: Qt.vector3d(0, 0.0586772, -0.00391181)
                                }
                            }
                            Node {
                                id: leftArm
                                objectName: "LeftArm"
                                position: Qt.vector3d(-0.0391181, 0.0547654, 0)
                                Node {
                                    id: leftForeArm
                                    objectName: "LeftForeArm"
                                    position: Qt.vector3d(-0.0782363, -0.0312945, 0.00391181)
                                    Node {
                                        id: leftHand
                                        objectName: "LeftHand"
                                        position: Qt.vector3d(-0.0899717, -0.0117354, 0.0117354)
                                        Node {
                                            id: joint_9
                                            objectName: "joint_9"
                                            position: Qt.vector3d(-0.125178, 0, 0.00391181)
                                            Node {
                                                id: joint_10
                                                objectName: "joint_10"
                                                position: Qt.vector3d(-0.0117354, 0.0117354, -0.00391181)
                                                Node {
                                                    id: joint_11
                                                    objectName: "joint_11"
                                                    position: Qt.vector3d(-0.0117354, 0.0117354, -0.00391181)
                                                    Node {
                                                        id: joint_12
                                                        objectName: "joint_12"
                                                        position: Qt.vector3d(-0.00391182, 0.0156472, -0.00391182)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_13
                                                objectName: "joint_13"
                                                position: Qt.vector3d(-0.0469418, 0.0195591, 0)
                                                Node {
                                                    id: joint_14
                                                    objectName: "joint_14"
                                                    position: Qt.vector3d(-0.0156473, 0.00391181, 0)
                                                    Node {
                                                        id: joint_15
                                                        objectName: "joint_15"
                                                        position: Qt.vector3d(-0.0156472, 0.00391181, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_16
                                                objectName: "joint_16"
                                                position: Qt.vector3d(-0.0469418, 0.00391181, 0.00391182)
                                                Node {
                                                    id: joint_17
                                                    objectName: "joint_17"
                                                    position: Qt.vector3d(-0.0195591, 0.00391182, 0)
                                                    Node {
                                                        id: joint_18
                                                        objectName: "joint_18"
                                                        position: Qt.vector3d(-0.0195591, 0.00391181, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_19
                                                objectName: "joint_19"
                                                position: Qt.vector3d(-0.0508536, -0.00782362, 0.00391182)
                                                Node {
                                                    id: joint_20
                                                    objectName: "joint_20"
                                                    position: Qt.vector3d(-0.0156472, 0, -0.00391182)
                                                    Node {
                                                        id: joint_21
                                                        objectName: "joint_21"
                                                        position: Qt.vector3d(-0.0156473, 0, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_22
                                                objectName: "joint_22"
                                                position: Qt.vector3d(-0.0469418, -0.0195591, 0)
                                                Node {
                                                    id: joint_23
                                                    objectName: "joint_23"
                                                    position: Qt.vector3d(-0.0156473, -0.00391182, -0.00391181)
                                                    Node {
                                                        id: joint_24
                                                        objectName: "joint_24"
                                                        position: Qt.vector3d(-0.0156472, -0.00391181, -0.00391181)
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
                                position: Qt.vector3d(0.0391181, 0.0547654, 0)
                                Node {
                                    id: rightForeArm
                                    objectName: "RightForeArm"
                                    position: Qt.vector3d(0.0782363, -0.0312945, 0.00391181)
                                    Node {
                                        id: rightHand
                                        objectName: "RightHand"
                                        position: Qt.vector3d(0.0899717, -0.0117354, 0.0156473)
                                        Node {
                                            id: joint_28
                                            objectName: "joint_28"
                                            position: Qt.vector3d(0.125178, 0, 0)
                                            Node {
                                                id: joint_29
                                                objectName: "joint_29"
                                                position: Qt.vector3d(0.0117354, 0.0117354, -0.00391181)
                                                Node {
                                                    id: joint_30
                                                    objectName: "joint_30"
                                                    position: Qt.vector3d(0.0117354, 0.0117354, -0.00391181)
                                                    Node {
                                                        id: joint_31
                                                        objectName: "joint_31"
                                                        position: Qt.vector3d(0.00391179, 0.0156472, -0.00391182)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_32
                                                objectName: "joint_32"
                                                position: Qt.vector3d(0.0469418, 0.0195591, 0)
                                                Node {
                                                    id: joint_33
                                                    objectName: "joint_33"
                                                    position: Qt.vector3d(0.0156472, 0.00391181, 0)
                                                    Node {
                                                        id: joint_34
                                                        objectName: "joint_34"
                                                        position: Qt.vector3d(0.0156473, 0.00391181, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_35
                                                objectName: "joint_35"
                                                position: Qt.vector3d(0.0469418, 0.00391181, 0)
                                                Node {
                                                    id: joint_36
                                                    objectName: "joint_36"
                                                    position: Qt.vector3d(0.0195591, 0.00391182, 0)
                                                    Node {
                                                        id: joint_37
                                                        objectName: "joint_37"
                                                        position: Qt.vector3d(0.0195591, 0.00391181, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_38
                                                objectName: "joint_38"
                                                position: Qt.vector3d(0.0508536, -0.00782362, 0)
                                                Node {
                                                    id: joint_39
                                                    objectName: "joint_39"
                                                    position: Qt.vector3d(0.0156473, 0, 0)
                                                    Node {
                                                        id: joint_40
                                                        objectName: "joint_40"
                                                        position: Qt.vector3d(0.0156473, 0, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_41
                                                objectName: "joint_41"
                                                position: Qt.vector3d(0.0469418, -0.0195591, 0)
                                                Node {
                                                    id: joint_42
                                                    objectName: "joint_42"
                                                    position: Qt.vector3d(0.0156472, -0.00391182, -0.00391181)
                                                    Node {
                                                        id: joint_43
                                                        objectName: "joint_43"
                                                        position: Qt.vector3d(0.0156473, -0.00391181, -0.00391181)
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
                    position: Qt.vector3d(-0.0508536, -0.0312945, -0.00391181)
                    Node {
                        id: leftLeg
                        objectName: "LeftLeg"
                        position: Qt.vector3d(-0.0156473, -0.191679, 0.0156473)
                        Node {
                            id: leftFoot
                            objectName: "LeftFoot"
                            position: Qt.vector3d(-0.0117354, -0.176032, 0.00391181)
                            Node {
                                id: joint_47
                                objectName: "joint_47"
                                position: Qt.vector3d(-0.00782362, -0.0547654, -0.0899717)
                            }
                        }
                    }
                }
                Node {
                    id: rightUpLeg
                    objectName: "RightUpLeg"
                    position: Qt.vector3d(0.0508536, -0.0312945, -0.00391181)
                    Node {
                        id: rightLeg
                        objectName: "RightLeg"
                        position: Qt.vector3d(0.0156472, -0.191679, 0.0156473)
                        Node {
                            id: rightFoot
                            objectName: "RightFoot"
                            position: Qt.vector3d(0.0117354, -0.176032, 0.00391181)
                            Node {
                                id: joint_51
                                objectName: "joint_51"
                                position: Qt.vector3d(0.00782363, -0.0547654, -0.0899717)
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
                qtmesh_gen3d_1_1789952303230_mesh_mat_material
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
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_0.qad"
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
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_1.qad"
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
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_2.qad"
        }
    }
}
