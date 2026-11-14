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
        id: qtmesh_gen3d_1_1794641822670_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794641822670_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794641822670_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794641822670_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794641822670_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794641822670_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794641822670_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794641822670_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794641822670_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794641822670_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794641822670_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794641822670_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794641822670_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794641822670_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794641822670_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_39_trim,
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
            joint_41,
            joint_47,
            joint_51,
            joint_43
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00178589, 0, 1, 0, 0.04886, 0, 0, 1, -0.0203192, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00178589, 0, 1, 0, -0.00208086, 0, 0, 1, -0.0242377, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00178589, 0, 1, 0, -0.0647773, 0, 0, 1, -0.0281563, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00178589, 0, 1, 0, -0.135311, 0, 0, 1, -0.0359933, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0373994, 0, 1, 0, -0.198007, 0, 0, 1, -0.0399119, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.119689, 0, 1, 0, -0.170578, 0, 0, 1, -0.0516674, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.198059, 0, 1, 0, -0.158822, 0, 0, 1, -0.055586, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.303859, 0, 1, 0, -0.158822, 0, 0, 1, -0.055586, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0409712, 0, 1, 0, -0.198007, 0, 0, 1, -0.0399119, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.12326, 0, 1, 0, -0.170578, 0, 0, 1, -0.0516674, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.201631, 0, 1, 0, -0.158822, 0, 0, 1, -0.055586, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.307431, 0, 1, 0, -0.158822, 0, 0, 1, -0.055586, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0530735, 0, 1, 0, 0.0802083, 0, 0, 1, -0.0203192, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0566453, 0, 1, 0, 0.0802083, 0, 0, 1, -0.0203192, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.319534, 0, 1, 0, -0.174496, 0, 0, 1, -0.055586, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.3548, 0, 1, 0, -0.178415, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.3548, 0, 1, 0, -0.162741, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.3548, 0, 1, 0, -0.147066, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.350882, 0, 1, 0, -0.135311, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.323105, 0, 1, 0, -0.174496, 0, 0, 1, -0.055586, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358372, 0, 1, 0, -0.178415, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358372, 0, 1, 0, -0.162741, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358372, 0, 1, 0, -0.147066, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0648291, 0, 1, 0, 0.268298, 0, 0, 1, -0.0320748, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0684009, 0, 1, 0, 0.268298, 0, 0, 1, -0.0320748, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00178589, 0, 1, 0, -0.213681, 0, 0, 1, -0.0399119, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.335208, 0, 1, 0, -0.19017, 0, 0, 1, -0.055586, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.370474, 0, 1, 0, -0.182333, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.374393, 0, 1, 0, -0.162741, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.370474, 0, 1, 0, -0.147066, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.366556, 0, 1, 0, -0.135311, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.338779, 0, 1, 0, -0.19017, 0, 0, 1, -0.055586, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.374046, 0, 1, 0, -0.182333, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.377965, 0, 1, 0, -0.162741, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.374046, 0, 1, 0, -0.147066, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0765847, 0, 1, 0, 0.436794, 0, 0, 1, -0.0399119, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0801565, 0, 1, 0, 0.436794, 0, 0, 1, -0.0399119, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00178589, 0, 1, 0, -0.268541, 0, 0, 1, -0.0320748, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.343045, 0, 1, 0, -0.205844, 0, 0, 1, -0.0516674, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.386149, 0, 1, 0, -0.186252, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.390067, 0, 1, 0, -0.162741, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.386149, 0, 1, 0, -0.147066, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.378312, 0, 1, 0, -0.135311, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346617, 0, 1, 0, -0.205844, 0, 0, 1, -0.0516674, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.38972, 0, 1, 0, -0.186252, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.393639, 0, 1, 0, -0.162741, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.38972, 0, 1, 0, -0.147066, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.354454, 0, 1, 0, -0.135311, 0, 0, 1, -0.063423, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0883403, 0, 1, 0, 0.495572, 0, 0, 1, 0.0541329, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0919121, 0, 1, 0, 0.495572, 0, 0, 1, 0.0541329, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381883, 0, 1, 0, -0.135311, 0, 0, 1, -0.063423, 0, 0, 0, 1)
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
                id: staff_39_trim
                objectName: "staff_39_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00178589, -0.04886, 0.0203192)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0509409, 0.00391853)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0626965, 0.00391853)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0705335, 0.00783706)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0783706, 0.00391853)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0548594, -0.00783706)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0391853, 0.0626965, 0.00391853)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0822891, -0.0274297, 0.0117556)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0783706, -0.0117556, 0.00391853)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.1058, 0, 0)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0156741, 0.0156741, 0)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0156741, 0.0156741, 0)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00783706, 0.0156741, -0.00391853)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0509409, 0.0195926, 0.00783706)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0156741, 0.00391853, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0156741, 0.00391853, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0509409, 0.00391853, 0.00783706)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0195926, 0, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0156741, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0509409, -0.0117556, 0.00783706)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0156741, 0, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0156741, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0470224, -0.0235112, 0.00783706)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0156741, 0, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0117556, 0, 0)
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
                                    position: Qt.vector3d(0.0391853, 0.0626965, 0.00391853)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0822891, -0.0274297, 0.0117556)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0783706, -0.0117556, 0.00391853)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.1058, 0, 0)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0156741, 0.0156741, 0)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0156741, 0.0156741, 0)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00783706, 0.0156741, -0.00391853)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0509409, 0.0195926, 0.00783706)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0156741, 0.00391853, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0156741, 0.00391853, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0509409, 0.00391853, 0.00783706)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0195926, 0, 0)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0156741, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0509409, -0.0117556, 0.00783706)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0156741, 0, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0156741, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0470224, -0.0235112, 0.00783706)
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
                        position: Qt.vector3d(-0.0548594, -0.0313482, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0117556, -0.188089, 0.0117556)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0117556, -0.168497, 0.00783706)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0117556, -0.058778, -0.0940447)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0548594, -0.0313482, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0117556, -0.188089, 0.0117556)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0117556, -0.168497, 0.00783706)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0117556, -0.058778, -0.0940447)
                                }
                            }
                        }
                    }
                }
            }
        }
        Node {
            id: joint_42
            objectName: "joint_42"
            position: Qt.vector3d(0.370128, 0.135311, 0.063423)
            Node {
                id: joint_43
                objectName: "joint_43"
                position: Qt.vector3d(0.0117556, 0, 0)
            }
        }
        Model {
            id: typing_mesh
            objectName: "Typing_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1794641822670_mesh_mat_material
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
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: neck
            property: "rotation"
            keyframeSource: "animations/neck_rotation_0.qad"
        }
        KeyframeGroup {
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.77271, 0.362865, 0.362865, -0.373601)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.813239, 0.404708, 0.314818, -0.275214)
            }
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.948341, 0.299054, 0.0427873, 0.0968777)
            }
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
            target: joint_19
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.77271, 0.362865, 0.362865, -0.373601)
            }
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
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            keyframeSource: "animations/joint_11_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_12
            property: "rotation"
            keyframeSource: "animations/joint_12_rotation_0.qad"
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
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.77271, 0.362865, 0.362865, -0.373601)
            }
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
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0369898, 0.0250696, 0.158613)
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
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: neck
            property: "rotation"
            keyframeSource: "animations/neck_rotation_1.qad"
        }
        KeyframeGroup {
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.837004, 0.414725, 0.29121, -0.206455)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.825337, 0.443622, 0.311054, -0.158947)
            }
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.914147, 0.370026, 0.0448824, 0.159379)
            }
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
            target: joint_19
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.818538, 0.394502, 0.323142, -0.264469)
            }
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
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.945878, 0.241264, 0.192394, 0.10045)
            }
        }
        KeyframeGroup {
            target: joint_12
            property: "rotation"
            keyframeSource: "animations/joint_12_rotation_1.qad"
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
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.845875, 0.383902, 0.277232, -0.245474)
            }
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
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0369898, 0.0250696, 0.158613)
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
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: neck
            property: "rotation"
            keyframeSource: "animations/neck_rotation_2.qad"
        }
        KeyframeGroup {
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.837004, 0.414725, 0.29121, -0.206455)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.825337, 0.443622, 0.311054, -0.158947)
            }
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.914147, 0.370026, 0.0448825, 0.159379)
            }
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
            target: joint_19
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.818538, 0.394502, 0.323142, -0.264469)
            }
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
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.945878, 0.241264, 0.192394, 0.100451)
            }
        }
        KeyframeGroup {
            target: joint_12
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.99707, 0.0651173, 0.0366544, 0.0163835)
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
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.845875, 0.383902, 0.277231, -0.245474)
            }
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_2.qad"
        }
    }
}
