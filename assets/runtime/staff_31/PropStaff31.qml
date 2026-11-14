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
        id: qtmesh_gen3d_1_1794640492427_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794640492427_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794640492427_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794640492427_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794640492427_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794640492427_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794640492427_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794640492427_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794640492427_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794640492427_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794640492427_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794640492427_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794640492427_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794640492427_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794640492427_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            spine2,
            leftShoulder,
            leftArm,
            leftForeArm,
            leftHand,
            rightShoulder,
            rightArm,
            rightForeArm,
            rightHand,
            hips,
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
            leftFoot,
            rightFoot,
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
            spine,
            joint_47,
            joint_51,
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
            joint_43
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, -0.00233875, 0, 1, 0, -0.11188, 0, 0, 1, -0.0325375, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0368472, 0, 1, 0, -0.170659, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.1113, 0, 1, 0, -0.151066, 0, 0, 1, -0.0442932, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.197509, 0, 1, 0, -0.147147, 0, 0, 1, -0.0482118, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.299393, 0, 1, 0, -0.147147, 0, 0, 1, -0.0442932, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0415247, 0, 1, 0, -0.170659, 0, 0, 1, -0.0364561, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.115978, 0, 1, 0, -0.151066, 0, 0, 1, -0.0442932, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.202187, 0, 1, 0, -0.147147, 0, 0, 1, -0.0482118, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.30407, 0, 1, 0, -0.147147, 0, 0, 1, -0.0442932, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00233875, 0, 1, 0, 0.0605378, 0, 0, 1, -0.0207817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0525215, 0, 1, 0, 0.087968, 0, 0, 1, -0.0168631, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.057199, 0, 1, 0, 0.087968, 0, 0, 1, -0.0168631, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.318986, 0, 1, 0, -0.162822, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354253, 0, 1, 0, -0.16674, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354253, 0, 1, 0, -0.151066, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354253, 0, 1, 0, -0.135392, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.323663, 0, 1, 0, -0.162822, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358931, 0, 1, 0, -0.16674, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358931, 0, 1, 0, -0.151066, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362849, 0, 1, 0, -0.135392, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358931, 0, 1, 0, -0.123636, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0681959, 0, 1, 0, 0.268223, 0, 0, 1, -0.0247003, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0728734, 0, 1, 0, 0.268223, 0, 0, 1, -0.0247003, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0838702, 0, 1, 0, 0.440641, 0, 0, 1, -0.0364561, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0885478, 0, 1, 0, 0.440641, 0, 0, 1, -0.0325375, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00233875, 0, 1, 0, -0.182415, 0, 0, 1, -0.0364561, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.33466, 0, 1, 0, -0.174578, 0, 0, 1, -0.0364561, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.369927, 0, 1, 0, -0.170659, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.373846, 0, 1, 0, -0.154985, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.373846, 0, 1, 0, -0.135392, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354253, 0, 1, 0, -0.123636, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.339338, 0, 1, 0, -0.174578, 0, 0, 1, -0.0364561, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.374605, 0, 1, 0, -0.170659, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.378523, 0, 1, 0, -0.154985, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.378523, 0, 1, 0, -0.135392, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.378523, 0, 1, 0, -0.123636, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00233875, 0, 1, 0, 0.00959615, 0, 0, 1, -0.0207817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0995446, 0, 1, 0, 0.495501, 0, 0, 1, 0.0536715, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.104222, 0, 1, 0, 0.495501, 0, 0, 1, 0.0536715, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00233875, 0, 1, 0, -0.237275, 0, 0, 1, -0.0286189, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.338579, 0, 1, 0, -0.194171, 0, 0, 1, -0.0325375, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.385602, 0, 1, 0, -0.174578, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.393439, 0, 1, 0, -0.154985, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.393439, 0, 1, 0, -0.135392, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.373846, 0, 1, 0, -0.123636, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.343256, 0, 1, 0, -0.194171, 0, 0, 1, -0.0325375, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.390279, 0, 1, 0, -0.174578, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.398116, 0, 1, 0, -0.154985, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.398116, 0, 1, 0, -0.135392, 0, 0, 1, -0.0403746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.394198, 0, 1, 0, -0.123636, 0, 0, 1, -0.0403746, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: typing
        objectName: "Typing"
        Node {
            id: spine1
            objectName: "Spine1"
            position: Qt.vector3d(0.00233875, 0.0452641, 0.0247003)
            Node {
                id: spine2
                objectName: "Spine2"
                position: Qt.vector3d(0, 0.066616, 0.00783718)
                Node {
                    id: neck
                    objectName: "Neck"
                    position: Qt.vector3d(0, 0.0705346, 0.00391859)
                    Node {
                        id: head
                        objectName: "Head"
                        position: Qt.vector3d(0, 0.0548603, -0.00783718)
                    }
                }
                Node {
                    id: leftShoulder
                    objectName: "LeftShoulder"
                    position: Qt.vector3d(-0.0391859, 0.0587789, 0.00783718)
                    Node {
                        id: leftArm
                        objectName: "LeftArm"
                        position: Qt.vector3d(-0.0744532, -0.019593, 0.00391859)
                        Node {
                            id: leftForeArm
                            objectName: "LeftForeArm"
                            position: Qt.vector3d(-0.086209, -0.00391859, 0.00391859)
                            Node {
                                id: leftHand
                                objectName: "LeftHand"
                                position: Qt.vector3d(-0.101883, 0, -0.00391859)
                                Node {
                                    id: joint_10
                                    objectName: "joint_10"
                                    position: Qt.vector3d(-0.0195929, 0.0156744, -0.00391859)
                                    Node {
                                        id: joint_11
                                        objectName: "joint_11"
                                        position: Qt.vector3d(-0.0156744, 0.0117558, -0.00391859)
                                        Node {
                                            id: joint_12
                                            objectName: "joint_12"
                                            position: Qt.vector3d(-0.00391859, 0.019593, -0.00391859)
                                        }
                                    }
                                }
                                Node {
                                    id: joint_13
                                    objectName: "joint_13"
                                    position: Qt.vector3d(-0.0548603, 0.019593, -0.00391859)
                                    Node {
                                        id: joint_14
                                        objectName: "joint_14"
                                        position: Qt.vector3d(-0.0156744, 0.00391859, 0)
                                        Node {
                                            id: joint_15
                                            objectName: "joint_15"
                                            position: Qt.vector3d(-0.0156744, 0.00391859, 0)
                                        }
                                    }
                                }
                                Node {
                                    id: joint_16
                                    objectName: "joint_16"
                                    position: Qt.vector3d(-0.0548603, 0.00391859, -0.00391859)
                                    Node {
                                        id: joint_17
                                        objectName: "joint_17"
                                        position: Qt.vector3d(-0.0195929, 0.00391859, 0)
                                        Node {
                                            id: joint_18
                                            objectName: "joint_18"
                                            position: Qt.vector3d(-0.019593, 0, 0)
                                        }
                                    }
                                }
                                Node {
                                    id: joint_19
                                    objectName: "joint_19"
                                    position: Qt.vector3d(-0.0548603, -0.0117558, -0.00391859)
                                    Node {
                                        id: joint_20
                                        objectName: "joint_20"
                                        position: Qt.vector3d(-0.0195929, 0, 0)
                                        Node {
                                            id: joint_21
                                            objectName: "joint_21"
                                            position: Qt.vector3d(-0.019593, 0, 0)
                                        }
                                    }
                                }
                                Node {
                                    id: joint_22
                                    objectName: "joint_22"
                                    position: Qt.vector3d(-0.0548603, -0.0235115, -0.00391859)
                                    Node {
                                        id: joint_23
                                        objectName: "joint_23"
                                        position: Qt.vector3d(-0.0195929, 0, 0)
                                        Node {
                                            id: joint_24
                                            objectName: "joint_24"
                                            position: Qt.vector3d(-0.0156744, 0, 0)
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
                    position: Qt.vector3d(0.0391859, 0.0587789, 0.00391859)
                    Node {
                        id: rightArm
                        objectName: "RightArm"
                        position: Qt.vector3d(0.0744532, -0.019593, 0.00783718)
                        Node {
                            id: rightForeArm
                            objectName: "RightForeArm"
                            position: Qt.vector3d(0.086209, -0.00391859, 0.00391859)
                            Node {
                                id: rightHand
                                objectName: "RightHand"
                                position: Qt.vector3d(0.101883, 0, -0.00391859)
                                Node {
                                    id: joint_29
                                    objectName: "joint_29"
                                    position: Qt.vector3d(0.0195929, 0.0156744, -0.00391859)
                                    Node {
                                        id: joint_30
                                        objectName: "joint_30"
                                        position: Qt.vector3d(0.0156744, 0.0117558, -0.00391859)
                                        Node {
                                            id: joint_31
                                            objectName: "joint_31"
                                            position: Qt.vector3d(0.00391859, 0.019593, -0.00391859)
                                        }
                                    }
                                }
                                Node {
                                    id: joint_32
                                    objectName: "joint_32"
                                    position: Qt.vector3d(0.0548603, 0.019593, -0.00391859)
                                    Node {
                                        id: joint_33
                                        objectName: "joint_33"
                                        position: Qt.vector3d(0.0156744, 0.00391859, 0)
                                        Node {
                                            id: joint_34
                                            objectName: "joint_34"
                                            position: Qt.vector3d(0.0156744, 0.00391859, 0)
                                        }
                                    }
                                }
                                Node {
                                    id: joint_35
                                    objectName: "joint_35"
                                    position: Qt.vector3d(0.0548603, 0.00391859, -0.00391859)
                                    Node {
                                        id: joint_36
                                        objectName: "joint_36"
                                        position: Qt.vector3d(0.019593, 0.00391859, 0)
                                        Node {
                                            id: joint_37
                                            objectName: "joint_37"
                                            position: Qt.vector3d(0.0195929, 0, 0)
                                        }
                                    }
                                }
                                Node {
                                    id: joint_38
                                    objectName: "joint_38"
                                    position: Qt.vector3d(0.0587789, -0.0117558, -0.00391859)
                                    Node {
                                        id: joint_39
                                        objectName: "joint_39"
                                        position: Qt.vector3d(0.0156744, 0, 0)
                                        Node {
                                            id: joint_40
                                            objectName: "joint_40"
                                            position: Qt.vector3d(0.0195929, 0, 0)
                                        }
                                    }
                                }
                                Node {
                                    id: joint_41
                                    objectName: "joint_41"
                                    position: Qt.vector3d(0.0548603, -0.0235115, -0.00391859)
                                    Node {
                                        id: joint_42
                                        objectName: "joint_42"
                                        position: Qt.vector3d(0.019593, 0, 0)
                                        Node {
                                            id: joint_43
                                            objectName: "joint_43"
                                            position: Qt.vector3d(0.0156744, 0, 0)
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
            id: staff_31_trim
            objectName: "staff_31_trim"
            Node {
                id: hips
                objectName: "Hips"
                position: Qt.vector3d(0.00233875, -0.0605378, 0.0207817)
                Node {
                    id: spine
                    objectName: "Spine"
                    position: Qt.vector3d(0, 0.0509417, 0)
                }
                Node {
                    id: leftUpLeg
                    objectName: "LeftUpLeg"
                    position: Qt.vector3d(-0.0548603, -0.0274301, -0.00391859)
                    Node {
                        id: leftLeg
                        objectName: "LeftLeg"
                        position: Qt.vector3d(-0.0156744, -0.180255, 0.00783718)
                        Node {
                            id: leftFoot
                            objectName: "LeftFoot"
                            position: Qt.vector3d(-0.0156744, -0.172418, 0.0117558)
                            Node {
                                id: joint_47
                                objectName: "joint_47"
                                position: Qt.vector3d(-0.0156744, -0.0548603, -0.0901276)
                            }
                        }
                    }
                }
                Node {
                    id: rightUpLeg
                    objectName: "RightUpLeg"
                    position: Qt.vector3d(0.0548603, -0.0274301, -0.00391859)
                    Node {
                        id: rightLeg
                        objectName: "RightLeg"
                        position: Qt.vector3d(0.0156744, -0.180255, 0.00783718)
                        Node {
                            id: rightFoot
                            objectName: "RightFoot"
                            position: Qt.vector3d(0.0156744, -0.172418, 0.00783718)
                            Node {
                                id: joint_51
                                objectName: "joint_51"
                                position: Qt.vector3d(0.0156744, -0.0548603, -0.086209)
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
                qtmesh_gen3d_1_1794640492427_mesh_mat_material
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
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_0.qad"
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
                value: Qt.quaternion(0.946215, 0.230493, -0.0611784, -0.218651)
            }
        }
        KeyframeGroup {
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.82775, 0.320621, 0.317369, -0.333629)
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
            target: neck
            property: "rotation"
            keyframeSource: "animations/neck_rotation_0.qad"
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
                value: Qt.quaternion(0.829649, 0.318416, -0.314609, 0.333639)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.829649, 0.318416, -0.314609, 0.333639)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.857897, 0.347653, -0.282636, 0.251529)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.863635, 0.354288, -0.27428, 0.231052)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.857187, 0.350551, 0.283293, -0.249178)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.862875, 0.357181, 0.274879, -0.228712)
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
                value: Qt.quaternion(0.950803, 0.25948, 0.127899, 0.110838)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.945991, 0.230791, 0.0614603, 0.219226)
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
                value: Qt.quaternion(0.951555, 0.257427, -0.128065, -0.108963)
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
                value: Qt.quaternion(0.82775, 0.320621, 0.317369, -0.333629)
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
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_0.qad"
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
                value: Qt.quaternion(0.985907, 0.037478, -0.0277888, -0.160658)
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
                value: Qt.quaternion(0.993669, 0.0274111, -0.021306, -0.106852)
            }
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.104548, -0.0258701, -0.024803)
            }
        }
        KeyframeGroup {
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0369898, 0.0267669, 0.158336)
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
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_1.qad"
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
                value: Qt.quaternion(0.919289, 0.175989, -0.0980081, -0.338129)
            }
        }
        KeyframeGroup {
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.890285, 0.33566, 0.237613, -0.195615)
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
            keyframeSource: "animations/joint_17_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            keyframeSource: "animations/joint_14_rotation_1.qad"
        }
        KeyframeGroup {
            target: neck
            property: "rotation"
            keyframeSource: "animations/neck_rotation_1.qad"
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
                value: Qt.quaternion(0.909995, 0.337799, -0.136469, 0.197934)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.88957, 0.347248, -0.228122, 0.189854)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.891188, 0.367734, -0.234822, 0.124159)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.864611, 0.374442, -0.2959, 0.157111)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.893094, 0.387679, 0.217979, -0.0676237)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.870478, 0.389566, 0.279958, -0.110136)
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
                value: Qt.quaternion(0.918442, 0.319997, 0.143955, 0.182599)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.929223, 0.175527, 0.100077, 0.309387)
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
                value: Qt.quaternion(0.934747, 0.309486, -0.123912, -0.122931)
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
                value: Qt.quaternion(0.867053, 0.346157, 0.284096, -0.218368)
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
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_1.qad"
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
                value: Qt.quaternion(0.985907, 0.037478, -0.0277888, -0.160658)
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
            keyframeSource: "animations/joint_37_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.0274111, -0.021306, -0.106852)
            }
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.104548, -0.0258702, -0.0248029)
            }
        }
        KeyframeGroup {
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0369898, 0.026767, 0.158336)
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
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_2.qad"
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
            target: joint_33
            property: "rotation"
            keyframeSource: "animations/joint_33_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.919289, 0.175989, -0.098008, -0.338129)
            }
        }
        KeyframeGroup {
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.890285, 0.33566, 0.237613, -0.195615)
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
            keyframeSource: "animations/joint_17_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            keyframeSource: "animations/joint_14_rotation_2.qad"
        }
        KeyframeGroup {
            target: neck
            property: "rotation"
            keyframeSource: "animations/neck_rotation_2.qad"
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
                value: Qt.quaternion(0.909995, 0.337799, -0.136469, 0.197934)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.88957, 0.347248, -0.228122, 0.189854)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.891188, 0.367734, -0.234822, 0.124159)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.864611, 0.374442, -0.2959, 0.157111)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.893094, 0.387679, 0.217979, -0.0676236)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.870478, 0.389566, 0.279958, -0.110136)
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
                value: Qt.quaternion(0.918442, 0.319997, 0.143955, 0.182599)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.929222, 0.175527, 0.100078, 0.309387)
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
                value: Qt.quaternion(0.934747, 0.309486, -0.123912, -0.122931)
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
                value: Qt.quaternion(0.867053, 0.346157, 0.284096, -0.218368)
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
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_2.qad"
        }
    }
}
