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
        id: qtmesh_gen3d_1_1794640150881_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794640150881_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794640150881_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794640150881_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794640150881_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794640150881_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794640150881_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794640150881_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794640150881_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794640150881_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794640150881_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794640150881_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794640150881_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794640150881_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794640150881_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_30_trim,
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
            Qt.matrix4x4(1, 0, 0, -0.00301867, 0, 1, 0, 0.104187, 0, 0, 1, -0.0199895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00301867, 0, 1, 0, 0.0493809, 0, 0, 1, -0.0239042, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00301867, 0, 1, 0, -0.017169, 0, 0, 1, -0.0278189, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00301867, 0, 1, 0, -0.0915482, 0, 0, 1, -0.0356483, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0361283, 0, 1, 0, -0.158098, 0, 0, 1, -0.039563, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.114422, 0, 1, 0, -0.130695, 0, 0, 1, -0.0513071, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.196631, 0, 1, 0, -0.118951, 0, 0, 1, -0.0630512, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.306243, 0, 1, 0, -0.122866, 0, 0, 1, -0.0826247, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0421657, 0, 1, 0, -0.158098, 0, 0, 1, -0.039563, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.12046, 0, 1, 0, -0.130695, 0, 0, 1, -0.0513071, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.202668, 0, 1, 0, -0.118951, 0, 0, 1, -0.0630512, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.31228, 0, 1, 0, -0.122866, 0, 0, 1, -0.0826247, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0478724, 0, 1, 0, 0.13159, 0, 0, 1, -0.0199895, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0539098, 0, 1, 0, 0.13159, 0, 0, 1, -0.0160748, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.317987, 0, 1, 0, -0.13461, 0, 0, 1, -0.0865394, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.349304, 0, 1, 0, -0.142439, 0, 0, 1, -0.102198, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.353219, 0, 1, 0, -0.126781, 0, 0, 1, -0.0982835, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.353219, 0, 1, 0, -0.115036, 0, 0, 1, -0.0982835, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.349304, 0, 1, 0, -0.103292, 0, 0, 1, -0.0943688, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.324024, 0, 1, 0, -0.13461, 0, 0, 1, -0.0904541, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.355342, 0, 1, 0, -0.142439, 0, 0, 1, -0.110028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.359256, 0, 1, 0, -0.126781, 0, 0, 1, -0.106113, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.359256, 0, 1, 0, -0.115036, 0, 0, 1, -0.106113, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.359256, 0, 1, 0, -0.103292, 0, 0, 1, -0.106113, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0635312, 0, 1, 0, 0.299922, 0, 0, 1, -0.0278189, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0695685, 0, 1, 0, 0.299922, 0, 0, 1, -0.0278189, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00301867, 0, 1, 0, -0.169842, 0, 0, 1, -0.039563, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.329731, 0, 1, 0, -0.146354, 0, 0, 1, -0.0904541, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.364963, 0, 1, 0, -0.146354, 0, 0, 1, -0.102198, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.368878, 0, 1, 0, -0.130695, 0, 0, 1, -0.102198, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.368878, 0, 1, 0, -0.115036, 0, 0, 1, -0.0982835, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.368878, 0, 1, 0, -0.103292, 0, 0, 1, -0.0943688, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.335768, 0, 1, 0, -0.146354, 0, 0, 1, -0.0943688, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.371, 0, 1, 0, -0.146354, 0, 0, 1, -0.113942, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.374915, 0, 1, 0, -0.130695, 0, 0, 1, -0.113942, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.374915, 0, 1, 0, -0.115036, 0, 0, 1, -0.110028, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.374915, 0, 1, 0, -0.103292, 0, 0, 1, -0.106113, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0752753, 0, 1, 0, 0.452595, 0, 0, 1, -0.0317336, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0813126, 0, 1, 0, 0.452595, 0, 0, 1, -0.0278189, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00301867, 0, 1, 0, -0.224648, 0, 0, 1, -0.0356483, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.333645, 0, 1, 0, -0.165928, 0, 0, 1, -0.0904541, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.380622, 0, 1, 0, -0.150269, 0, 0, 1, -0.106113, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.388451, 0, 1, 0, -0.130695, 0, 0, 1, -0.106113, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.388451, 0, 1, 0, -0.115036, 0, 0, 1, -0.102198, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.384537, 0, 1, 0, -0.103292, 0, 0, 1, -0.0982835, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.339683, 0, 1, 0, -0.165928, 0, 0, 1, -0.0982835, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.386659, 0, 1, 0, -0.150269, 0, 0, 1, -0.117857, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.394489, 0, 1, 0, -0.130695, 0, 0, 1, -0.117857, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.394489, 0, 1, 0, -0.115036, 0, 0, 1, -0.113942, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.390574, 0, 1, 0, -0.103292, 0, 0, 1, -0.106113, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0987635, 0, 1, 0, 0.495657, 0, 0, 1, 0.0543897, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.104801, 0, 1, 0, 0.495657, 0, 0, 1, 0.0543897, 0, 0, 0, 1)
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
                id: staff_30_trim
                objectName: "staff_30_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00301867, -0.104187, 0.0199895)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0548058, 0.0039147)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0665499, 0.0039147)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0743793, 0.0078294)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.078294, 0.0039147)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0548058, -0.0039147)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.039147, 0.0665499, 0.0039147)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.078294, -0.0274029, 0.0117441)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0822087, -0.0117441, 0.0117441)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.109612, 0.0039147, 0.0195735)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0117441, 0.0117441, 0.0039147)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0117441, 0.0117441, 0.0039147)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00391471, 0.0195735, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0430617, 0.0195735, 0.0195735)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0156588, 0.0039147, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0156588, 0.0039147, 0.0039147)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0469764, 0.0039147, 0.0156588)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0156588, 0.0039147, 0.0039147)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0195735, 0, 0.0039147)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0469764, -0.0078294, 0.0156588)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0156588, 0, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0195735, 0, 0.0039147)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0430617, -0.0195735, 0.0117441)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0195735, 0, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0156588, 0, 0.0039147)
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
                                    position: Qt.vector3d(0.039147, 0.0665499, 0.0039147)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.078294, -0.0274029, 0.0117441)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0822087, -0.0117441, 0.0117441)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.109612, 0.0039147, 0.0195735)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0117441, 0.0117441, 0.0078294)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0117441, 0.0117441, 0.0039147)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00391468, 0.0195735, 0.0039147)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0430617, 0.0195735, 0.0274029)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0156588, 0.0039147, 0.0039147)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0156588, 0.0039147, 0.0039147)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0469764, 0.0039147, 0.0234882)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0156588, 0.0039147, 0.0078294)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0195735, 0, 0.0039147)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0469764, -0.0078294, 0.0234882)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0156588, 0, 0.0039147)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0195735, 0, 0.0039147)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0469764, -0.0195735, 0.0234882)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0156588, 0, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0156588, 0, 0)
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
                        position: Qt.vector3d(-0.0508911, -0.0274029, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0156588, -0.168332, 0.0078294)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0117441, -0.152673, 0.0039147)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0234882, -0.0430617, -0.0861234)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0508911, -0.0274029, -0.0039147)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0156588, -0.168332, 0.0117441)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0117441, -0.152673, 0)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0234882, -0.0430617, -0.0822087)
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
                qtmesh_gen3d_1_1794640150881_mesh_mat_material
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
                value: Qt.quaternion(0.973632, 0.203824, -0.063459, -0.0804326)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.992609, -0.0140257, 0.022148, -0.118492)
            }
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
                value: Qt.quaternion(0.650583, 0.311084, -0.568024, 0.396632)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.715222, 0.260112, -0.484388, 0.43147)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.80328, 0.274372, -0.368963, 0.378587)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.757295, 0.325745, -0.445962, 0.348587)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.804875, 0.343117, 0.340903, -0.343848)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.754303, 0.39364, 0.428483, -0.3041)
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
                value: Qt.quaternion(0.945919, 0.322029, 0.0352865, 0.0169919)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.946663, 0.274781, 0.140902, 0.092034)
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
            keyframeSource: "animations/joint_29_rotation_0.qad"
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
                value: Qt.quaternion(0.712271, 0.336702, 0.474272, -0.392897)
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
                value: Qt.quaternion(0.712271, 0.336702, 0.474272, -0.392897)
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
                value: Qt.quaternion(0.985907, 0.0372289, -0.024475, -0.161254)
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
                value: Qt.quaternion(0.985343, 0.0389555, 0.0164385, -0.165264)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.0513141, -0.015641, -0.0987164)
            }
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
                value: Qt.quaternion(0.986329, 0.0746398, 0.0233619, 0.145045)
            }
        }
        KeyframeGroup {
            target: joint_21
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.984652, 0.0224382, -0.00990811, 0.172798)
            }
        }
        KeyframeGroup {
            target: joint_18
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.97832, 0.0478666, -0.0200267, 0.200493)
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
                value: Qt.quaternion(0.951852, 0.204195, -0.0703437, -0.217565)
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
                value: Qt.quaternion(0.947877, 0.0217511, -0.126546, 0.291619)
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
                value: Qt.quaternion(0.781391, 0.369774, -0.403764, 0.299449)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.788886, 0.344959, -0.390165, 0.326242)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.838115, 0.351701, -0.302841, 0.286632)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.754948, 0.374476, -0.455831, 0.286424)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.846241, 0.427502, 0.255038, -0.18993)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.764613, 0.447122, 0.421803, -0.19373)
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
                value: Qt.quaternion(0.911099, 0.406358, 0.0353829, 0.0593386)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.931145, 0.255456, 0.166227, 0.2002)
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
            keyframeSource: "animations/joint_29_rotation_1.qad"
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
                value: Qt.quaternion(0.760747, 0.383464, 0.436036, -0.289987)
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
                value: Qt.quaternion(0.793764, 0.376462, 0.393031, -0.271556)
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
                value: Qt.quaternion(0.985907, 0.0372288, -0.024475, -0.161254)
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
                value: Qt.quaternion(0.985343, 0.0389555, 0.0164384, -0.165264)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993669, 0.0513141, -0.0156411, -0.0987163)
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
                value: Qt.quaternion(0.986329, 0.0746398, 0.0233619, 0.145045)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.97832, 0.0478666, -0.0200267, 0.200493)
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
                value: Qt.quaternion(0.98668, 0.0357048, -0.00798692, -0.158508)
            }
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
                value: Qt.quaternion(0.951852, 0.204195, -0.0703438, -0.217565)
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
                value: Qt.quaternion(0.781391, 0.369774, -0.403764, 0.299449)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.788886, 0.344959, -0.390165, 0.326242)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.838115, 0.351701, -0.302841, 0.286632)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.754948, 0.374476, -0.455831, 0.286424)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.846241, 0.427502, 0.255038, -0.18993)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.764613, 0.447122, 0.421803, -0.19373)
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
                value: Qt.quaternion(0.911099, 0.406358, 0.0353829, 0.0593386)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.931145, 0.255456, 0.166227, 0.2002)
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
            keyframeSource: "animations/joint_29_rotation_2.qad"
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
                value: Qt.quaternion(0.760747, 0.383464, 0.436036, -0.289987)
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
                value: Qt.quaternion(0.793764, 0.376462, 0.393031, -0.271556)
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
