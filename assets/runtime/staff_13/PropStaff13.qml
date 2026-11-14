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
        id: qtmesh_gen3d_1_1794635039633_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794635039633_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794635039633_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794635039633_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794635039633_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794635039633_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794635039633_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794635039633_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794635039633_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794635039633_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794635039633_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794635039633_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794635039633_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794635039633_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794635039633_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_13_trim,
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
            joint_26,
            joint_29,
            joint_32,
            joint_35,
            leftLeg,
            rightLeg,
            neck,
            joint_11,
            joint_14,
            joint_17,
            joint_20,
            joint_27,
            joint_30,
            joint_33,
            joint_36,
            leftFoot,
            rightFoot,
            head,
            joint_12,
            joint_15,
            joint_18,
            joint_21,
            joint_28,
            joint_31,
            joint_34,
            joint_37,
            joint_41,
            joint_45
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001925, 0, 1, 0, 0.0917382, 0, 0, 1, -0.0248223, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001925, 0, 1, 0, 0.0407765, 0, 0, 1, -0.0248223, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001925, 0, 1, 0, -0.0219456, 0, 0, 1, -0.0287424, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001925, 0, 1, 0, -0.0925079, 0, 0, 1, -0.0326626, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0372763, 0, 1, 0, -0.15131, 0, 0, 1, -0.0365827, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.111759, 0, 1, 0, -0.123869, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.178401, 0, 1, 0, -0.112109, 0, 0, 1, -0.0483431, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.284244, 0, 1, 0, -0.112109, 0, 0, 1, -0.0444229, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0411263, 0, 1, 0, -0.15131, 0, 0, 1, -0.0326626, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.115609, 0, 1, 0, -0.123869, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.182251, 0, 1, 0, -0.112109, 0, 0, 1, -0.0444229, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.288094, 0, 1, 0, -0.112109, 0, 0, 1, -0.0444229, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0529568, 0, 1, 0, 0.119179, 0, 0, 1, -0.0248223, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0568068, 0, 1, 0, 0.119179, 0, 0, 1, -0.0248223, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.296005, 0, 1, 0, -0.123869, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.323446, 0, 1, 0, -0.135629, 0, 0, 1, -0.0444229, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327366, 0, 1, 0, -0.119949, 0, 0, 1, -0.0444229, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327366, 0, 1, 0, -0.104268, 0, 0, 1, -0.0444229, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.299855, 0, 1, 0, -0.127789, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.327296, 0, 1, 0, -0.135629, 0, 0, 1, -0.0444229, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331216, 0, 1, 0, -0.119949, 0, 0, 1, -0.0444229, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331216, 0, 1, 0, -0.100348, 0, 0, 1, -0.0444229, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0686373, 0, 1, 0, 0.291665, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0724873, 0, 1, 0, 0.291665, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001925, 0, 1, 0, -0.16699, 0, 0, 1, -0.0326626, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.307765, 0, 1, 0, -0.139549, 0, 0, 1, -0.0365827, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.343046, 0, 1, 0, -0.139549, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.346967, 0, 1, 0, -0.119949, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.343046, 0, 1, 0, -0.104268, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.311615, 0, 1, 0, -0.139549, 0, 0, 1, -0.0365827, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346896, 0, 1, 0, -0.139549, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350817, 0, 1, 0, -0.119949, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346896, 0, 1, 0, -0.100348, 0, 0, 1, -0.0405028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0843178, 0, 1, 0, 0.44455, 0, 0, 1, -0.0483431, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0881678, 0, 1, 0, 0.44455, 0, 0, 1, -0.0483431, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.001925, 0, 1, 0, -0.206192, 0, 0, 1, -0.0287424, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.303845, 0, 1, 0, -0.15915, 0, 0, 1, -0.0326626, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358727, 0, 1, 0, -0.14347, 0, 0, 1, -0.0365827, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362647, 0, 1, 0, -0.119949, 0, 0, 1, -0.0365827, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358727, 0, 1, 0, -0.104268, 0, 0, 1, -0.0365827, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.307695, 0, 1, 0, -0.15915, 0, 0, 1, -0.0326626, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362577, 0, 1, 0, -0.14347, 0, 0, 1, -0.0365827, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366497, 0, 1, 0, -0.119949, 0, 0, 1, -0.0365827, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362577, 0, 1, 0, -0.100348, 0, 0, 1, -0.0365827, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.111759, 0, 1, 0, 0.487671, 0, 0, 1, 0.0378998, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.115609, 0, 1, 0, 0.487671, 0, 0, 1, 0.0378998, 0, 0, 0, 1)
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
                id: staff_13_trim
                objectName: "staff_13_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.001925, -0.0917382, 0.0248223)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0509617, 0)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0627221, 0.00392013)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0705623, 0.00392013)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0744824, 0)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0392013, -0.00392013)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0392013, 0.0588019, 0.00392013)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0744825, -0.0274409, 0.00392013)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0666422, -0.0117604, 0.00784026)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.105843, 0, -0.00392013)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0117604, 0.0117604, -0.00392013)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0117604, 0.0156805, -0.00392013)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(0.00392014, 0.0196007, -0.00392013)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0392013, 0.0235208, 0)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0196006, 0.00392012, -0.00392013)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0156805, 0.00392014, -0.00392013)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0431214, 0.00784026, 0)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0196007, 0, -0.00392013)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0156805, 0, -0.00392013)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0431214, -0.00784026, 0)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0156805, 0, -0.00392013)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0156805, 0, -0.00392013)
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
                                    position: Qt.vector3d(0.0392013, 0.0588019, 0)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0744825, -0.0274409, 0.00784026)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0666422, -0.0117604, 0.00392013)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.105843, 0, 0)
                                                Node {
                                                    id: joint_26
                                                    objectName: "joint_26"
                                                    position: Qt.vector3d(0.0117604, 0.0156805, -0.00392013)
                                                    Node {
                                                        id: joint_27
                                                        objectName: "joint_27"
                                                        position: Qt.vector3d(0.0117604, 0.0117604, -0.00392013)
                                                        Node {
                                                            id: joint_28
                                                            objectName: "joint_28"
                                                            position: Qt.vector3d(-0.00392014, 0.0196007, -0.00392013)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0392013, 0.0235208, 0)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0196007, 0.00392012, -0.00392013)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.0156805, 0.00392014, -0.00392013)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0431214, 0.00784026, 0)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0196007, 0, -0.00392013)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0156805, 0, -0.00392013)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0431214, -0.0117604, 0)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0156805, 0, -0.00392013)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0156805, 0, -0.00392013)
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
                        position: Qt.vector3d(-0.0548818, -0.0274409, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0156805, -0.172486, 0.0156805)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0156805, -0.152885, 0.00784026)
                                Node {
                                    id: joint_41
                                    objectName: "joint_41"
                                    position: Qt.vector3d(-0.0274409, -0.0431214, -0.0862428)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0548818, -0.0274409, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0156805, -0.172486, 0.0156805)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0156805, -0.152885, 0.00784026)
                                Node {
                                    id: joint_45
                                    objectName: "joint_45"
                                    position: Qt.vector3d(0.0274409, -0.0431214, -0.0862428)
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
                qtmesh_gen3d_1_1794635039633_mesh_mat_material
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
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_0.qad"
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
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_0.qad"
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
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_0.qad"
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
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_0.qad"
        }
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_0.qad"
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
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_1.qad"
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
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_1.qad"
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
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_1.qad"
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
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_1.qad"
        }
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_1.qad"
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
            target: head
            property: "rotation"
            keyframeSource: "animations/head_rotation_2.qad"
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
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_2.qad"
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
            target: leftFoot
            property: "rotation"
            keyframeSource: "animations/leftFoot_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftForeArm
            property: "rotation"
            keyframeSource: "animations/leftForeArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            keyframeSource: "animations/leftArm_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftUpLeg
            property: "rotation"
            keyframeSource: "animations/leftUpLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: leftShoulder
            property: "rotation"
            keyframeSource: "animations/leftShoulder_rotation_2.qad"
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
            target: leftHand
            property: "rotation"
            keyframeSource: "animations/leftHand_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine
            property: "rotation"
            keyframeSource: "animations/spine_rotation_2.qad"
        }
        KeyframeGroup {
            target: spine1
            property: "rotation"
            keyframeSource: "animations/spine1_rotation_2.qad"
        }
    }
}
