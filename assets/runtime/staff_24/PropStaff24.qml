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
        id: qtmesh_gen3d_1_1794636796649_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794636796649_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794636796649_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794636796649_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794636796649_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794636796649_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794636796649_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794636796649_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794636796649_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794636796649_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794636796649_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794636796649_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794636796649_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794636796649_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794636796649_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_24_trim,
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
            joint_35,
            joint_38,
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
            joint_36,
            joint_39,
            joint_43,
            joint_47,
            joint_51
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182873, 0, 1, 0, 0.0485584, 0, 0, 1, 0.0626675, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182873, 0, 1, 0, 0.00542181, 0, 0, 1, 0.058746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182873, 0, 1, 0, -0.0494792, 0, 0, 1, 0.050903, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182873, 0, 1, 0, -0.112223, 0, 0, 1, 0.0391385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0373863, 0, 1, 0, -0.167124, 0, 0, 1, 0.0234525, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.119738, 0, 1, 0, -0.151438, 0, 0, 1, 0.0234525, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.213854, 0, 1, 0, -0.143595, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.331499, 0, 1, 0, -0.151438, 0, 0, 1, 0.0391385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0410438, 0, 1, 0, -0.167124, 0, 0, 1, 0.0234525, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.123395, 0, 1, 0, -0.151438, 0, 0, 1, 0.0234525, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.217511, 0, 1, 0, -0.143595, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.335157, 0, 1, 0, -0.151438, 0, 0, 1, 0.0391385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0569938, 0, 1, 0, 0.0760089, 0, 0, 1, 0.0626675, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0606513, 0, 1, 0, 0.0760089, 0, 0, 1, 0.0626675, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.339342, 0, 1, 0, -0.167124, 0, 0, 1, 0.04306, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.366793, 0, 1, 0, -0.174967, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.370714, 0, 1, 0, -0.159281, 0, 0, 1, 0.0312955, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.374636, 0, 1, 0, -0.143595, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.374636, 0, 1, 0, -0.127909, 0, 0, 1, 0.0391385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.343, 0, 1, 0, -0.167124, 0, 0, 1, 0.04306, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.37045, 0, 1, 0, -0.174967, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.378293, 0, 1, 0, -0.127909, 0, 0, 1, 0.0391385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0687583, 0, 1, 0, 0.268163, 0, 0, 1, 0.0626675, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0724158, 0, 1, 0, 0.268163, 0, 0, 1, 0.058746, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182873, 0, 1, 0, -0.178889, 0, 0, 1, 0.0234525, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.347185, 0, 1, 0, -0.178889, 0, 0, 1, 0.04306, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.382479, 0, 1, 0, -0.186732, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.390322, 0, 1, 0, -0.167124, 0, 0, 1, 0.0312955, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.394243, 0, 1, 0, -0.147517, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.394243, 0, 1, 0, -0.131831, 0, 0, 1, 0.0391385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350843, 0, 1, 0, -0.178889, 0, 0, 1, 0.04306, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.386136, 0, 1, 0, -0.186732, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.374372, 0, 1, 0, -0.159281, 0, 0, 1, 0.0312955, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.378293, 0, 1, 0, -0.143595, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.397901, 0, 1, 0, -0.131831, 0, 0, 1, 0.0391385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0844444, 0, 1, 0, 0.440709, 0, 0, 1, 0.04306, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0881018, 0, 1, 0, 0.440709, 0, 0, 1, 0.04306, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182873, 0, 1, 0, -0.253397, 0, 0, 1, -0.0118411, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.35895, 0, 1, 0, -0.198496, 0, 0, 1, 0.04306, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.398165, 0, 1, 0, -0.194575, 0, 0, 1, 0.0312955, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.409929, 0, 1, 0, -0.171046, 0, 0, 1, 0.0312955, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.413851, 0, 1, 0, -0.151438, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.409929, 0, 1, 0, -0.131831, 0, 0, 1, 0.0391385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362607, 0, 1, 0, -0.198496, 0, 0, 1, 0.04306, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.401822, 0, 1, 0, -0.194575, 0, 0, 1, 0.0312955, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.393979, 0, 1, 0, -0.167124, 0, 0, 1, 0.0312955, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.397901, 0, 1, 0, -0.147517, 0, 0, 1, 0.035217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.413587, 0, 1, 0, -0.131831, 0, 0, 1, 0.0391385, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.10013, 0, 1, 0, 0.49561, 0, 0, 1, 0.109726, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.103788, 0, 1, 0, 0.49561, 0, 0, 1, 0.109726, 0, 0, 0, 1)
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
                id: staff_24_trim
                objectName: "staff_24_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00182873, -0.0485584, -0.0626675)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0431365, 0.0039215)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0549011, 0.00784301)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0627441, 0.0117645)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0666656, 0.015686)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0745086, 0.0352935)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.039215, 0.0549011, 0.015686)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0823516, -0.015686, 0)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0941161, -0.007843, -0.0117645)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.117645, 0.007843, -0.00392151)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.00784299, 0.015686, -0.00392151)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.00784302, 0.0117645, 0)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.0117645, 0.0196075, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0352935, 0.023529, 0.00392151)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.015686, 0.0117645, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.015686, 0.00784302, 0.0039215)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.039215, 0.007843, 0.00784301)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0196075, 0.00784302, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0196075, 0.00392149, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0431365, -0.007843, 0.00392151)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0196075, 0.00392149, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0196075, 0.00392151, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0431365, -0.023529, 0)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0196075, 0.00392151, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.015686, 0, 0)
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
                                    position: Qt.vector3d(0.039215, 0.0549011, 0.015686)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0823516, -0.015686, 0)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0941161, -0.007843, -0.0117645)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.117645, 0.007843, -0.00392151)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.00784299, 0.015686, -0.00392151)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.00784302, 0.0117645, 0)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.0117645, 0.0196075, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0352935, 0.023529, 0.00392151)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.015686, 0.0117645, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.015686, 0.00784302, 0.0039215)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.039215, 0.007843, 0.00784301)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0196075, 0.00784302, 0)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0196075, 0.00392149, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0431365, -0.007843, 0.00392151)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0196075, 0.00392149, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0196075, 0.00392151, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0431365, -0.023529, 0)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0196075, 0.00392151, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.015686, 0, 0)
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
                        position: Qt.vector3d(-0.0588226, -0.0274505, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0117645, -0.192154, 0)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.015686, -0.172546, 0.0196075)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.015686, -0.0549011, -0.0666656)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0588226, -0.0274505, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0117645, -0.192154, 0.0039215)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.015686, -0.172546, 0.015686)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.015686, -0.0549011, -0.0666656)
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
                qtmesh_gen3d_1_1794636796649_mesh_mat_material
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
            target: joint_39
            property: "rotation"
            keyframeSource: "animations/joint_39_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_37
            property: "rotation"
            keyframeSource: "animations/joint_37_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            keyframeSource: "animations/joint_36_rotation_0.qad"
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
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.843581, 0.468686, -0.103187, 0.24095)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.862045, 0.476215, -0.0598668, 0.162832)
            }
        }
        KeyframeGroup {
            target: joint_33
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.989356, -0.0358708, 0.106832, 0.0920556)
            }
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.955647, 0.280856, -0.0207779, 0.086183)
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
                value: Qt.quaternion(0.989338, -0.0354397, -0.107099, -0.0921088)
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
                value: Qt.quaternion(0.843581, 0.468686, -0.103186, 0.24095)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            keyframeSource: "animations/joint_32_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.861411, 0.478763, 0.0588251, -0.159052)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            keyframeSource: "animations/joint_13_rotation_0.qad"
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
                value: Qt.quaternion(0.949023, 0.201367, -0.185535, 0.156151)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.955512, 0.281562, 0.0202456, -0.0854962)
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
                value: Qt.quaternion(0.950054, 0.199973, 0.183802, -0.153704)
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
                value: Qt.quaternion(0.843227, 0.471439, 0.102321, -0.237159)
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
                value: Qt.quaternion(0.843227, 0.47144, 0.102321, -0.237158)
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
            target: joint_39
            property: "rotation"
            keyframeSource: "animations/joint_39_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_37
            property: "rotation"
            keyframeSource: "animations/joint_37_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.997759, 0.0489456, 0.0322792, -0.0322513)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.0908722, -0.0545233, -0.031371)
            }
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.982309, 0.051901, -0.0449014, 0.174241)
            }
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
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.888429, 0.440023, 0.0270075, 0.127845)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            keyframeSource: "animations/joint_35_rotation_1.qad"
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
                value: Qt.quaternion(0.973412, 0.224255, -0.0248926, -0.0394789)
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
                value: Qt.quaternion(0.955732, -0.0245365, -0.0853156, 0.280527)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.983326, -0.0431611, -0.155462, 0.0839)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.99707, 0.062865, 0.037719, 0.0218518)
            }
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
                value: Qt.quaternion(0.889143, 0.413017, 0.110684, 0.163066)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            keyframeSource: "animations/joint_32_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            keyframeSource: "animations/joint_16_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.874951, 0.477177, -0.0341987, 0.0747926)
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
                value: Qt.quaternion(0.917629, 0.242561, -0.203098, 0.240568)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            keyframeSource: "animations/joint_11_rotation_1.qad"
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
                value: Qt.quaternion(0.931437, 0.243635, 0.205323, -0.175813)
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
                value: Qt.quaternion(0.87765, 0.458562, 0.0319074, -0.135769)
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
            keyframeSource: "animations/joint_22_rotation_1.qad"
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
                value: Qt.quaternion(0.985907, 0.0374779, 0.00722657, -0.162884)
            }
        }
        KeyframeGroup {
            target: joint_40
            property: "rotation"
            keyframeSource: "animations/joint_40_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_39
            property: "rotation"
            keyframeSource: "animations/joint_39_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_37
            property: "rotation"
            keyframeSource: "animations/joint_37_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.997759, 0.0489456, 0.0322792, -0.0322514)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.0444195, 0.0115275, -0.102551)
            }
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.0908722, -0.0545235, -0.0313708)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.984652, -0.0201655, -0.0402208, 0.16863)
            }
        }
        KeyframeGroup {
            target: joint_18
            property: "rotation"
            keyframeSource: "animations/joint_18_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_15
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.982309, 0.051901, -0.0449015, 0.174242)
            }
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
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.888429, 0.440023, 0.0270075, 0.127845)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.890979, 0.450192, 0.0224997, 0.0545615)
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
                value: Qt.quaternion(0.973412, 0.224254, -0.0248926, -0.0394788)
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
                value: Qt.quaternion(0.955732, -0.0245364, -0.0853156, 0.280527)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.983326, -0.0431611, -0.155462, 0.0838999)
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
                value: Qt.quaternion(0.99707, 0.062865, 0.037719, 0.0218519)
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
                value: Qt.quaternion(0.889143, 0.413017, 0.110684, 0.163066)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            keyframeSource: "animations/joint_32_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            keyframeSource: "animations/joint_16_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.874951, 0.477177, -0.0341987, 0.0747926)
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
                value: Qt.quaternion(0.917629, 0.242561, -0.203098, 0.240568)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            keyframeSource: "animations/joint_11_rotation_2.qad"
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
                value: Qt.quaternion(0.931437, 0.243635, 0.205323, -0.175813)
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
                value: Qt.quaternion(0.87765, 0.458562, 0.0319073, -0.135769)
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
            keyframeSource: "animations/joint_22_rotation_2.qad"
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
