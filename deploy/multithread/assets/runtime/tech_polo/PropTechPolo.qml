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
        id: qtmesh_gen3d_1_1789952573691_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1789952573691_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789952573691_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1789952573691_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1789952573691_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789952573691_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1789952573691_normal_png_texture
        objectName: "qtmesh_gen3d_1_1789952573691_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789952573691_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1789952573691_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1789952573691_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1789952573691_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1789952573691_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1789952573691_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1789952573691_normal_png_texture
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
            joint_13,
            joint_16,
            joint_19,
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
            joint_14,
            joint_17,
            joint_20,
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
            Qt.matrix4x4(1, 0, 0, -0.00195803, 0, 1, 0, 0.0568633, 0, 0, 1, -0.0244979, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00195803, 0, 1, 0, 0.00988029, 0, 0, 1, -0.0284131, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00195803, 0, 1, 0, -0.0449333, 0, 0, 1, -0.0323284, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00195803, 0, 1, 0, -0.107577, 0, 0, 1, -0.0362437, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0411098, 0, 1, 0, -0.162391, 0, 0, 1, -0.0401589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0450258, 0, 1, 0, -0.162391, 0, 0, 1, -0.0401589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.127245, 0, 1, 0, -0.134984, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.131161, 0, 1, 0, -0.134984, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.217296, 0, 1, 0, -0.123238, 0, 0, 1, -0.0519047, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.221212, 0, 1, 0, -0.123238, 0, 0, 1, -0.0519047, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342584, 0, 1, 0, -0.138899, 0, 0, 1, -0.0519047, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.3465, 0, 1, 0, -0.138899, 0, 0, 1, -0.0519047, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0528555, 0, 1, 0, 0.0842701, 0, 0, 1, -0.0244979, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0567716, 0, 1, 0, 0.0842701, 0, 0, 1, -0.0244979, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.35433, 0, 1, 0, -0.15456, 0, 0, 1, -0.0479894, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.393483, 0, 1, 0, -0.115408, 0, 0, 1, -0.0519047, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358246, 0, 1, 0, -0.15456, 0, 0, 1, -0.0479894, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.401314, 0, 1, 0, -0.162391, 0, 0, 1, -0.0479894, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.401314, 0, 1, 0, -0.14673, 0, 0, 1, -0.0519047, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.405229, 0, 1, 0, -0.131069, 0, 0, 1, -0.0519047, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.397399, 0, 1, 0, -0.115408, 0, 0, 1, -0.0519047, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0685166, 0, 1, 0, 0.272202, 0, 0, 1, -0.0401589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0724326, 0, 1, 0, 0.272202, 0, 0, 1, -0.0401589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00195803, 0, 1, 0, -0.178052, 0, 0, 1, -0.0401589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362161, 0, 1, 0, -0.166306, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.397398, 0, 1, 0, -0.162391, 0, 0, 1, -0.0479894, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.397398, 0, 1, 0, -0.14673, 0, 0, 1, -0.0519047, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.401313, 0, 1, 0, -0.131069, 0, 0, 1, -0.0519047, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.413059, 0, 1, 0, -0.111493, 0, 0, 1, -0.0479894, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366077, 0, 1, 0, -0.166306, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.416975, 0, 1, 0, -0.162391, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.42089, 0, 1, 0, -0.14673, 0, 0, 1, -0.0479894, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.42089, 0, 1, 0, -0.131069, 0, 0, 1, -0.0479894, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.416975, 0, 1, 0, -0.111493, 0, 0, 1, -0.0479894, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0841776, 0, 1, 0, 0.444474, 0, 0, 1, -0.0401589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0880936, 0, 1, 0, 0.444474, 0, 0, 1, -0.0401589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00195803, 0, 1, 0, -0.240696, 0, 0, 1, -0.0362437, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.366076, 0, 1, 0, -0.185882, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.413059, 0, 1, 0, -0.162391, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.416974, 0, 1, 0, -0.14673, 0, 0, 1, -0.0479894, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.416974, 0, 1, 0, -0.131069, 0, 0, 1, -0.0479894, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.42872, 0, 1, 0, -0.107577, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.369992, 0, 1, 0, -0.185882, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.432636, 0, 1, 0, -0.166306, 0, 0, 1, -0.0401589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.440467, 0, 1, 0, -0.14673, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.440467, 0, 1, 0, -0.131069, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.432636, 0, 1, 0, -0.107577, 0, 0, 1, -0.0440742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0841776, 0, 1, 0, 0.495372, 0, 0, 1, 0.0342309, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0880936, 0, 1, 0, 0.495372, 0, 0, 1, 0.0342309, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: a5
        objectName: "a5"
        Node {
            id: tech_polo_trim
            objectName: "tech_polo_trim"
            Node {
                id: hips
                objectName: "Hips"
                position: Qt.vector3d(0.00195803, -0.0568633, 0.0244979)
                Node {
                    id: spine
                    objectName: "Spine"
                    position: Qt.vector3d(0, 0.0469831, 0.00391526)
                    Node {
                        id: spine1
                        objectName: "Spine1"
                        position: Qt.vector3d(0, 0.0548136, 0.00391526)
                        Node {
                            id: spine2
                            objectName: "Spine2"
                            position: Qt.vector3d(0, 0.0626441, 0.00391525)
                            Node {
                                id: neck
                                objectName: "Neck"
                                position: Qt.vector3d(0, 0.0704746, 0.00391525)
                                Node {
                                    id: head
                                    objectName: "Head"
                                    position: Qt.vector3d(0, 0.0626441, -0.00391525)
                                }
                            }
                            Node {
                                id: leftArm
                                objectName: "LeftArm"
                                position: Qt.vector3d(-0.0430678, 0.0548136, 0.00391525)
                                Node {
                                    id: leftForeArm
                                    objectName: "LeftForeArm"
                                    position: Qt.vector3d(-0.0861356, -0.0274068, 0.00391525)
                                    Node {
                                        id: leftHand
                                        objectName: "LeftHand"
                                        position: Qt.vector3d(-0.0900509, -0.0117458, 0.00783051)
                                        Node {
                                            id: joint_9
                                            objectName: "joint_9"
                                            position: Qt.vector3d(-0.125288, 0.015661, 0)
                                            Node {
                                                id: joint_10
                                                objectName: "joint_10"
                                                position: Qt.vector3d(-0.0117458, 0.015661, -0.00391525)
                                                Node {
                                                    id: joint_11
                                                    objectName: "joint_11"
                                                    position: Qt.vector3d(-0.0078305, 0.0117458, -0.00391526)
                                                    Node {
                                                        id: joint_12
                                                        objectName: "joint_12"
                                                        position: Qt.vector3d(-0.00391525, 0.0195763, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_13
                                                objectName: "joint_13"
                                                position: Qt.vector3d(-0.0548136, 0.0234915, -0.00391525)
                                                Node {
                                                    id: joint_14
                                                    objectName: "joint_14"
                                                    position: Qt.vector3d(-0.015661, 0, -0.00391526)
                                                    Node {
                                                        id: joint_15
                                                        objectName: "joint_15"
                                                        position: Qt.vector3d(-0.015661, 0.00391525, -0.00391525)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_16
                                                objectName: "joint_16"
                                                position: Qt.vector3d(-0.0548136, 0.00783052, 0)
                                                Node {
                                                    id: joint_17
                                                    objectName: "joint_17"
                                                    position: Qt.vector3d(-0.0195763, 0, -0.00391525)
                                                    Node {
                                                        id: joint_18
                                                        objectName: "joint_18"
                                                        position: Qt.vector3d(-0.0195763, 0, -0.00391526)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_19
                                                objectName: "joint_19"
                                                position: Qt.vector3d(-0.0587288, -0.00783052, 0)
                                                Node {
                                                    id: joint_20
                                                    objectName: "joint_20"
                                                    position: Qt.vector3d(-0.015661, 0, -0.00391525)
                                                    Node {
                                                        id: joint_21
                                                        objectName: "joint_21"
                                                        position: Qt.vector3d(-0.0195763, 0, -0.00391526)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_22
                                                objectName: "joint_22"
                                                position: Qt.vector3d(-0.0508983, -0.0234915, 0)
                                                Node {
                                                    id: joint_23
                                                    objectName: "joint_23"
                                                    position: Qt.vector3d(-0.0195763, -0.00391525, -0.00391525)
                                                    Node {
                                                        id: joint_24
                                                        objectName: "joint_24"
                                                        position: Qt.vector3d(-0.015661, -0.00391526, -0.00391526)
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
                                position: Qt.vector3d(0.0430678, 0.0548136, 0.00391525)
                                Node {
                                    id: rightForeArm
                                    objectName: "RightForeArm"
                                    position: Qt.vector3d(0.0861356, -0.0274068, 0.00391525)
                                    Node {
                                        id: rightHand
                                        objectName: "RightHand"
                                        position: Qt.vector3d(0.0900509, -0.0117458, 0.00783051)
                                        Node {
                                            id: joint_28
                                            objectName: "joint_28"
                                            position: Qt.vector3d(0.125288, 0.015661, 0)
                                            Node {
                                                id: joint_29
                                                objectName: "joint_29"
                                                position: Qt.vector3d(0.0117458, 0.015661, -0.00391525)
                                                Node {
                                                    id: joint_30
                                                    objectName: "joint_30"
                                                    position: Qt.vector3d(0.0078305, 0.0117458, -0.00391526)
                                                    Node {
                                                        id: joint_31
                                                        objectName: "joint_31"
                                                        position: Qt.vector3d(0.00391525, 0.0195763, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_32
                                                objectName: "joint_32"
                                                position: Qt.vector3d(0.0548136, 0.0234915, -0.00391525)
                                                Node {
                                                    id: joint_33
                                                    objectName: "joint_33"
                                                    position: Qt.vector3d(0.015661, 0, -0.00391526)
                                                    Node {
                                                        id: joint_34
                                                        objectName: "joint_34"
                                                        position: Qt.vector3d(0.015661, 0.00391525, -0.00391525)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_35
                                                objectName: "joint_35"
                                                position: Qt.vector3d(0.0548136, 0.00783052, 0)
                                                Node {
                                                    id: joint_36
                                                    objectName: "joint_36"
                                                    position: Qt.vector3d(0.0195763, 0, -0.00391525)
                                                    Node {
                                                        id: joint_37
                                                        objectName: "joint_37"
                                                        position: Qt.vector3d(0.0195763, 0, -0.00391526)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_38
                                                objectName: "joint_38"
                                                position: Qt.vector3d(0.0587288, -0.00783052, 0)
                                                Node {
                                                    id: joint_39
                                                    objectName: "joint_39"
                                                    position: Qt.vector3d(0.015661, 0, -0.00391525)
                                                    Node {
                                                        id: joint_40
                                                        objectName: "joint_40"
                                                        position: Qt.vector3d(0.0195763, 0, -0.00391526)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_41
                                                objectName: "joint_41"
                                                position: Qt.vector3d(0.0508983, -0.0234915, 0)
                                                Node {
                                                    id: joint_42
                                                    objectName: "joint_42"
                                                    position: Qt.vector3d(0.0195763, -0.00391525, -0.00391525)
                                                    Node {
                                                        id: joint_43
                                                        objectName: "joint_43"
                                                        position: Qt.vector3d(0.015661, -0.00391526, -0.00391526)
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
                    position: Qt.vector3d(-0.0548136, -0.0274068, 0)
                    Node {
                        id: leftLeg
                        objectName: "LeftLeg"
                        position: Qt.vector3d(-0.015661, -0.187932, 0.015661)
                        Node {
                            id: leftFoot
                            objectName: "LeftFoot"
                            position: Qt.vector3d(-0.015661, -0.172271, 0)
                            Node {
                                id: joint_47
                                objectName: "joint_47"
                                position: Qt.vector3d(0, -0.0508983, -0.0743898)
                            }
                        }
                    }
                }
                Node {
                    id: rightUpLeg
                    objectName: "RightUpLeg"
                    position: Qt.vector3d(0.0548136, -0.0274068, 0)
                    Node {
                        id: rightLeg
                        objectName: "RightLeg"
                        position: Qt.vector3d(0.015661, -0.187932, 0.015661)
                        Node {
                            id: rightFoot
                            objectName: "RightFoot"
                            position: Qt.vector3d(0.015661, -0.172271, 0)
                            Node {
                                id: joint_51
                                objectName: "joint_51"
                                position: Qt.vector3d(0, -0.0508983, -0.0743898)
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
                qtmesh_gen3d_1_1789952573691_mesh_mat_material
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
