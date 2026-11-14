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
        id: qtmesh_gen3d_1_1794641495207_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794641495207_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794641495207_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794641495207_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794641495207_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794641495207_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794641495207_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794641495207_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794641495207_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794641495207_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794641495207_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794641495207_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794641495207_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794641495207_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794641495207_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_38_trim,
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
            Qt.matrix4x4(1, 0, 0, -0.00182906, 0, 1, 0, 0.0920315, 0, 0, 1, -0.0206876, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182906, 0, 1, 0, 0.0411058, 0, 0, 1, -0.0206876, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182906, 0, 1, 0, -0.0215719, 0, 0, 1, -0.024605, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182906, 0, 1, 0, -0.0920845, 0, 0, 1, -0.0324397, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0373446, 0, 1, 0, -0.154762, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.119609, 0, 1, 0, -0.123423, 0, 0, 1, -0.0481091, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.205791, 0, 1, 0, -0.107754, 0, 0, 1, -0.0520265, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.335064, 0, 1, 0, -0.107754, 0, 0, 1, -0.0441918, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0410027, 0, 1, 0, -0.154762, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.123267, 0, 1, 0, -0.123423, 0, 0, 1, -0.0441918, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.209449, 0, 1, 0, -0.107754, 0, 0, 1, -0.0520265, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.338722, 0, 1, 0, -0.107754, 0, 0, 1, -0.0441918, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0569314, 0, 1, 0, 0.119453, 0, 0, 1, -0.0206876, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0605895, 0, 1, 0, 0.119453, 0, 0, 1, -0.0206876, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.346816, 0, 1, 0, -0.119506, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.382072, 0, 1, 0, -0.127341, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.38599, 0, 1, 0, -0.111671, 0, 0, 1, -0.0441918, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.38599, 0, 1, 0, -0.0960018, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.382072, 0, 1, 0, -0.0842497, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350474, 0, 1, 0, -0.119506, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.38573, 0, 1, 0, -0.127341, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.389648, 0, 1, 0, -0.111671, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.389648, 0, 1, 0, -0.0960018, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.38573, 0, 1, 0, -0.0842497, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0765182, 0, 1, 0, 0.295734, 0, 0, 1, -0.0324397, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0801763, 0, 1, 0, 0.295734, 0, 0, 1, -0.0324397, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182906, 0, 1, 0, -0.166514, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358568, 0, 1, 0, -0.131258, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.401659, 0, 1, 0, -0.131258, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.405576, 0, 1, 0, -0.115589, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.405576, 0, 1, 0, -0.0960018, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.401659, 0, 1, 0, -0.0842497, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362226, 0, 1, 0, -0.131258, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.405317, 0, 1, 0, -0.131258, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.409235, 0, 1, 0, -0.115589, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.409235, 0, 1, 0, -0.0960018, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.405317, 0, 1, 0, -0.0842497, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0882703, 0, 1, 0, 0.452429, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0919284, 0, 1, 0, 0.452429, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00182906, 0, 1, 0, -0.221357, 0, 0, 1, -0.0285223, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362486, 0, 1, 0, -0.150845, 0, 0, 1, -0.0324397, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.417329, 0, 1, 0, -0.131258, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.425163, 0, 1, 0, -0.115589, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.421246, 0, 1, 0, -0.0960018, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.413411, 0, 1, 0, -0.0803324, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366144, 0, 1, 0, -0.150845, 0, 0, 1, -0.0324397, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.420987, 0, 1, 0, -0.131258, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.428821, 0, 1, 0, -0.115589, 0, 0, 1, -0.0402744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.424904, 0, 1, 0, -0.0960018, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.417069, 0, 1, 0, -0.0803324, 0, 0, 1, -0.036357, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.100022, 0, 1, 0, 0.499437, 0, 0, 1, 0.0498249, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.10368, 0, 1, 0, 0.499437, 0, 0, 1, 0.0498249, 0, 0, 0, 1)
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
                id: staff_38_trim
                objectName: "staff_38_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00182906, -0.0920315, 0.0206876)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0509257, 0)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0626778, 0.00391736)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0705125, 0.00783472)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0744299, 0.00391736)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0548431, -0.00783472)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0391736, 0.0626778, 0.00783473)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0822646, -0.0313389, 0.00783472)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0861819, -0.0156694, 0.00391736)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.129273, 0, -0.00783472)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0117521, 0.0117521, -0.00391736)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0117521, 0.0117521, -0.00391736)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00391737, 0.0195868, -0.00391736)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0470083, 0.0195868, -0.00391736)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0195868, 0.00391735, -0.00391736)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0156695, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0509257, 0.00391736, 0)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0195868, 0.00391737, -0.00391736)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0195868, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0509257, -0.0117521, -0.00391736)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0195868, 0, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0156695, 0, -0.00391736)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0470083, -0.0235042, -0.00391736)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0195868, 0, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0117521, -0.00391736, -0.00391736)
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
                                    position: Qt.vector3d(0.0391736, 0.0626778, 0.00391736)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0822646, -0.0313389, 0.00783472)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.086182, -0.0156694, 0.00783472)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.129273, 0, -0.00783472)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0117521, 0.0117521, -0.00391736)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0117521, 0.0117521, -0.00391736)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00391737, 0.0195868, -0.00391736)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0470083, 0.0195868, -0.00391736)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0195868, 0.00391735, -0.00391736)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0156695, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0509257, 0.00391736, -0.00391736)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0195868, 0.00391737, 0)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0195868, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0509257, -0.0117521, -0.00391736)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0195868, 0, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0156694, 0, -0.00391736)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0470083, -0.0235042, -0.00391736)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0195868, 0, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0117521, -0.00391736, -0.00391736)
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
                        position: Qt.vector3d(-0.0587604, -0.0274215, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0195868, -0.176281, 0.0117521)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0117521, -0.156694, 0.00783473)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0117521, -0.0470083, -0.0900993)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0587604, -0.0274215, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0195868, -0.176281, 0.0117521)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0117521, -0.156694, 0.00391736)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0117521, -0.0470083, -0.0861819)
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
                qtmesh_gen3d_1_1794641495207_mesh_mat_material
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
                value: Qt.quaternion(0.827463, 0.365562, -0.250651, 0.344736)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.827463, 0.365562, -0.250651, 0.344736)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.856824, 0.388383, -0.214405, 0.262757)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.828034, 0.420078, -0.293996, 0.226848)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.827441, 0.422523, 0.294542, -0.223742)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.827441, 0.422523, 0.294543, -0.223743)
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
                value: Qt.quaternion(0.951495, 0.254995, 0.0694449, 0.157519)
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
                value: Qt.quaternion(0.952301, 0.25319, -0.069939, -0.155326)
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
                value: Qt.quaternion(0.825715, 0.368098, 0.253345, -0.34426)
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
                value: Qt.quaternion(0.825715, 0.368098, 0.253345, -0.34426)
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
                value: Qt.quaternion(0.985907, -0.0232585, -0.03039, -0.16286)
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
                value: Qt.quaternion(0.993669, 0.0216189, -0.0273758, -0.106798)
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
                value: Qt.quaternion(0.986329, -0.022123, 0.0291906, 0.160665)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.982309, 0.0266508, 0.0136502, 0.18486)
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
            target: joint_39
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.980832, -0.01944, -0.109466, -0.160023)
            }
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
                value: Qt.quaternion(0.938721, 0.184497, -0.0469561, -0.28733)
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
                value: Qt.quaternion(0.951324, -0.0435509, 0.0904007, 0.291399)
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
                value: Qt.quaternion(0.990523, -0.0185742, -0.108061, 0.0827197)
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
                value: Qt.quaternion(0.901871, 0.369416, -0.0651493, 0.214279)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.887622, 0.382103, -0.157292, 0.203429)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.892317, 0.398594, -0.161924, 0.136651)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.833143, 0.428654, -0.315278, 0.150761)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.873242, 0.428321, 0.22873, -0.0408948)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.8426, 0.435929, 0.299228, -0.102247)
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
                value: Qt.quaternion(0.918197, 0.309309, 0.07789, 0.234894)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.946868, 0.185477, 0.048946, 0.258152)
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
                value: Qt.quaternion(0.935085, 0.302882, -0.060265, -0.173919)
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
                value: Qt.quaternion(0.867497, 0.385238, 0.21487, -0.22994)
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
                value: Qt.quaternion(0.888834, 0.371591, 0.16718, -0.209631)
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
                value: Qt.quaternion(0.985907, -0.0232586, -0.03039, -0.16286)
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
                value: Qt.quaternion(0.993669, 0.0216189, -0.0273758, -0.106798)
            }
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.104586, -0.02585, -0.0246644)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.982309, 0.0266508, 0.0136502, 0.18486)
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
                value: Qt.quaternion(0.938721, 0.184497, -0.0469561, -0.28733)
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
                value: Qt.quaternion(0.951324, -0.0435508, 0.0904006, 0.291399)
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
                value: Qt.quaternion(0.990523, -0.0185742, -0.108061, 0.0827196)
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
                value: Qt.quaternion(0.901871, 0.369416, -0.0651493, 0.214279)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.887622, 0.382103, -0.157292, 0.203429)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.892317, 0.398594, -0.161924, 0.136651)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.833143, 0.428654, -0.315278, 0.150761)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.873242, 0.428321, 0.22873, -0.0408949)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.8426, 0.435929, 0.299228, -0.102247)
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
                value: Qt.quaternion(0.918197, 0.309309, 0.0778899, 0.234895)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.946869, 0.185477, 0.0489459, 0.258152)
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
                value: Qt.quaternion(0.935084, 0.302882, -0.060265, -0.173919)
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
                value: Qt.quaternion(0.867497, 0.385238, 0.21487, -0.22994)
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
                value: Qt.quaternion(0.888834, 0.371591, 0.16718, -0.209631)
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
