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
        id: qtmesh_gen3d_1_1794646945498_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794646945498_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794646945498_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794646945498_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794646945498_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794646945498_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794646945498_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794646945498_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794646945498_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794646945498_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794646945498_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794646945498_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794646945498_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794646945498_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794646945498_normal_png_texture
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
            staff_25_trim,
            hips,
            leftUpLeg,
            rightUpLeg,
            joint_10,
            joint_13,
            joint_20,
            joint_23,
            leftLeg,
            rightLeg,
            leftFoot,
            rightFoot,
            neck,
            joint_11,
            joint_14,
            joint_21,
            joint_24,
            spine,
            joint_29,
            joint_33,
            head,
            joint_12,
            joint_15,
            joint_22,
            joint_25
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, -0.00154069, 0, 1, 0, -0.0811997, 0, 0, 1, -0.0312024, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0375686, 0, 1, 0, -0.143775, 0, 0, 1, -0.0351134, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.119698, 0, 1, 0, -0.120309, 0, 0, 1, -0.0390243, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.190095, 0, 1, 0, -0.108576, 0, 0, 1, -0.0429352, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.291779, 0, 1, 0, -0.104665, 0, 0, 1, -0.0390243, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.04065, 0, 1, 0, -0.143775, 0, 0, 1, -0.0351134, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.122779, 0, 1, 0, -0.120309, 0, 0, 1, -0.0390243, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.193176, 0, 1, 0, -0.108576, 0, 0, 1, -0.0429352, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.29486, 0, 1, 0, -0.104665, 0, 0, 1, -0.0390243, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00154069, 0, 1, 0, 0.0987029, 0, 0, 1, -0.0233806, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0493013, 0, 1, 0, 0.126079, 0, 0, 1, -0.0233806, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0523827, 0, 1, 0, 0.126079, 0, 0, 1, -0.0194697, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.303512, 0, 1, 0, -0.112487, 0, 0, 1, -0.0312024, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.323066, 0, 1, 0, -0.108576, 0, 0, 1, -0.0390243, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.306593, 0, 1, 0, -0.116398, 0, 0, 1, -0.0312024, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.326148, 0, 1, 0, -0.108576, 0, 0, 1, -0.0390243, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0610341, 0, 1, 0, 0.290338, 0, 0, 1, -0.0272915, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0641155, 0, 1, 0, 0.290338, 0, 0, 1, -0.0272915, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.068856, 0, 1, 0, 0.442864, 0, 0, 1, -0.0390243, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0719374, 0, 1, 0, 0.442864, 0, 0, 1, -0.0351134, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00154069, 0, 1, 0, -0.155507, 0, 0, 1, -0.0351134, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.315244, 0, 1, 0, -0.120309, 0, 0, 1, -0.0272915, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342621, 0, 1, 0, -0.108576, 0, 0, 1, -0.0390243, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.318326, 0, 1, 0, -0.12422, 0, 0, 1, -0.0272915, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.345702, 0, 1, 0, -0.108576, 0, 0, 1, -0.0390243, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00154069, 0, 1, 0, 0.0478608, 0, 0, 1, -0.0233806, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0962325, 0, 1, 0, 0.485885, 0, 0, 1, 0.050927, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0993138, 0, 1, 0, 0.485885, 0, 0, 1, 0.050927, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00154069, 0, 1, 0, -0.206349, 0, 0, 1, -0.0312024, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.319155, 0, 1, 0, -0.135953, 0, 0, 1, -0.0233806, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362175, 0, 1, 0, -0.108576, 0, 0, 1, -0.0390243, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.322237, 0, 1, 0, -0.143775, 0, 0, 1, -0.0233806, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.365257, 0, 1, 0, -0.108576, 0, 0, 1, -0.0390243, 0, 0, 0, 1)
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
                id: staff_25_trim
                objectName: "staff_25_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00154069, -0.0987029, 0.0233806)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.050842, 0)
                    }
                    Node {
                        id: leftUpLeg
                        objectName: "LeftUpLeg"
                        position: Qt.vector3d(-0.050842, -0.0273765, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0117328, -0.164259, 0.00391093)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.00782185, -0.152526, 0.0117328)
                                Node {
                                    id: joint_29
                                    objectName: "joint_29"
                                    position: Qt.vector3d(-0.0273765, -0.0430202, -0.0899513)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.050842, -0.0273765, -0.00391093)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0117328, -0.164259, 0.00782185)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.00782185, -0.152526, 0.00782185)
                                Node {
                                    id: joint_33
                                    objectName: "joint_33"
                                    position: Qt.vector3d(0.0273765, -0.0430202, -0.0860404)
                                }
                            }
                        }
                    }
                }
            }
        }
        Node {
            id: spine1
            objectName: "Spine1"
            position: Qt.vector3d(0.00154069, 0.0108031, 0.0272915)
            Node {
                id: spine2
                objectName: "Spine2"
                position: Qt.vector3d(0, 0.0703967, 0.00391093)
                Node {
                    id: neck
                    objectName: "Neck"
                    position: Qt.vector3d(0, 0.0743076, 0.00391093)
                    Node {
                        id: head
                        objectName: "Head"
                        position: Qt.vector3d(0, 0.050842, -0.00391093)
                    }
                }
                Node {
                    id: leftShoulder
                    objectName: "LeftShoulder"
                    position: Qt.vector3d(-0.0391093, 0.0625748, 0.00391093)
                    Node {
                        id: leftArm
                        objectName: "LeftArm"
                        position: Qt.vector3d(-0.0821294, -0.0234656, 0.00391093)
                        Node {
                            id: leftForeArm
                            objectName: "LeftForeArm"
                            position: Qt.vector3d(-0.0703967, -0.0117328, 0.00391093)
                            Node {
                                id: leftHand
                                objectName: "LeftHand"
                                position: Qt.vector3d(-0.101684, -0.00391092, -0.00391093)
                                Node {
                                    id: joint_10
                                    objectName: "joint_10"
                                    position: Qt.vector3d(-0.0117328, 0.00782185, -0.00782185)
                                    Node {
                                        id: joint_11
                                        objectName: "joint_11"
                                        position: Qt.vector3d(-0.0117328, 0.00782185, -0.00391093)
                                        Node {
                                            id: joint_12
                                            objectName: "joint_12"
                                            position: Qt.vector3d(-0.00391093, 0.0156437, -0.00391093)
                                        }
                                    }
                                }
                                Node {
                                    id: joint_13
                                    objectName: "joint_13"
                                    position: Qt.vector3d(-0.0312874, 0.00391092, 0)
                                    Node {
                                        id: joint_14
                                        objectName: "joint_14"
                                        position: Qt.vector3d(-0.0195546, 0, 0)
                                        Node {
                                            id: joint_15
                                            objectName: "joint_15"
                                            position: Qt.vector3d(-0.0195546, 0, 0)
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
                    position: Qt.vector3d(0.0391093, 0.0625748, 0.00391093)
                    Node {
                        id: rightArm
                        objectName: "RightArm"
                        position: Qt.vector3d(0.0821294, -0.0234656, 0.00391093)
                        Node {
                            id: rightForeArm
                            objectName: "RightForeArm"
                            position: Qt.vector3d(0.0703967, -0.0117328, 0.00391093)
                            Node {
                                id: rightHand
                                objectName: "RightHand"
                                position: Qt.vector3d(0.101684, -0.00391092, -0.00391093)
                                Node {
                                    id: joint_20
                                    objectName: "joint_20"
                                    position: Qt.vector3d(0.0117328, 0.0117328, -0.00782185)
                                    Node {
                                        id: joint_21
                                        objectName: "joint_21"
                                        position: Qt.vector3d(0.0117328, 0.00782186, -0.00391093)
                                        Node {
                                            id: joint_22
                                            objectName: "joint_22"
                                            position: Qt.vector3d(0.00391093, 0.0195546, -0.00391093)
                                        }
                                    }
                                }
                                Node {
                                    id: joint_23
                                    objectName: "joint_23"
                                    position: Qt.vector3d(0.0312874, 0.00391092, 0)
                                    Node {
                                        id: joint_24
                                        objectName: "joint_24"
                                        position: Qt.vector3d(0.0195546, 0, 0)
                                        Node {
                                            id: joint_25
                                            objectName: "joint_25"
                                            position: Qt.vector3d(0.0195546, 0, 0)
                                        }
                                    }
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
                qtmesh_gen3d_1_1794646945498_mesh_mat_material
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
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightHand
            property: "rotation"
            keyframeSource: "animations/rightHand_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightArm
            property: "rotation"
            keyframeSource: "animations/rightArm_rotation_0.qad"
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
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightForeArm
            property: "rotation"
            keyframeSource: "animations/rightForeArm_rotation_0.qad"
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
            target: spine2
            property: "rotation"
            keyframeSource: "animations/spine2_rotation_0.qad"
        }
        KeyframeGroup {
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_0.qad"
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
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightHand
            property: "rotation"
            keyframeSource: "animations/rightHand_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightArm
            property: "rotation"
            keyframeSource: "animations/rightArm_rotation_1.qad"
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
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightForeArm
            property: "rotation"
            keyframeSource: "animations/rightForeArm_rotation_1.qad"
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
            target: spine2
            property: "rotation"
            keyframeSource: "animations/spine2_rotation_1.qad"
        }
        KeyframeGroup {
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_1.qad"
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
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightHand
            property: "rotation"
            keyframeSource: "animations/rightHand_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightArm
            property: "rotation"
            keyframeSource: "animations/rightArm_rotation_2.qad"
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
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightForeArm
            property: "rotation"
            keyframeSource: "animations/rightForeArm_rotation_2.qad"
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
            target: spine2
            property: "rotation"
            keyframeSource: "animations/spine2_rotation_2.qad"
        }
        KeyframeGroup {
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_2.qad"
        }
    }
}
