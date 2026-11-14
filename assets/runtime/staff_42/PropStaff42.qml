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
        id: qtmesh_gen3d_1_1794642472617_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794642472617_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794642472617_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794642472617_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794642472617_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794642472617_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794642472617_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794642472617_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794642472617_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794642472617_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794642472617_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794642472617_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794642472617_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794642472617_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794642472617_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_42_trim,
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
            joint_16,
            joint_19,
            joint_29,
            joint_32,
            joint_38,
            leftLeg,
            rightLeg,
            neck,
            joint_13,
            joint_17,
            joint_20,
            joint_22,
            joint_30,
            joint_33,
            joint_39,
            joint_41,
            leftFoot,
            rightFoot,
            joint_11,
            head,
            joint_14,
            joint_18,
            joint_21,
            joint_23,
            joint_31,
            joint_34,
            joint_35,
            joint_40,
            joint_42,
            joint_47,
            joint_51,
            joint_12
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00190053, 0, 1, 0, 0.0414154, 0, 0, 1, 0.050471, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00190053, 0, 1, 0, -0.00949286, 0, 0, 1, 0.046555, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00190053, 0, 1, 0, -0.0682331, 0, 0, 1, 0.042639, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00190053, 0, 1, 0, -0.134805, 0, 0, 1, 0.034807, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0294276, 0, 1, 0, -0.197462, 0, 0, 1, 0.0230589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0881679, 0, 1, 0, -0.181798, 0, 0, 1, 0.0191429, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.170404, 0, 1, 0, -0.158302, 0, 0, 1, 0.0152269, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.287885, 0, 1, 0, -0.158302, 0, 0, 1, 0.0113109, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0332287, 0, 1, 0, -0.197462, 0, 0, 1, 0.0230589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0919689, 0, 1, 0, -0.181798, 0, 0, 1, 0.0230589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.174205, 0, 1, 0, -0.158302, 0, 0, 1, 0.0152269, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.291686, 0, 1, 0, -0.158302, 0, 0, 1, 0.0113109, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0568397, 0, 1, 0, 0.0688275, 0, 0, 1, 0.042639, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0606408, 0, 1, 0, 0.0688275, 0, 0, 1, 0.050471, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327045, 0, 1, 0, -0.162218, 0, 0, 1, 0.00347884, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327045, 0, 1, 0, -0.150469, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.303434, 0, 1, 0, -0.17005, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.330846, 0, 1, 0, -0.173966, 0, 0, 1, -0.000437174, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.330846, 0, 1, 0, -0.150469, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0725038, 0, 1, 0, 0.276376, 0, 0, 1, 0.030891, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0763049, 0, 1, 0, 0.276376, 0, 0, 1, 0.030891, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00190053, 0, 1, 0, -0.20921, 0, 0, 1, 0.0230589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327045, 0, 1, 0, -0.173966, 0, 0, 1, -0.000437174, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342709, 0, 1, 0, -0.162218, 0, 0, 1, -0.000437174, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342709, 0, 1, 0, -0.150469, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.323129, 0, 1, 0, -0.138721, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.311266, 0, 1, 0, -0.181798, 0, 0, 1, 0.00347884, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.34651, 0, 1, 0, -0.177882, 0, 0, 1, -0.000437174, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.34651, 0, 1, 0, -0.150469, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.32693, 0, 1, 0, -0.138721, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0881679, 0, 1, 0, 0.448681, 0, 0, 1, 0.030891, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0919689, 0, 1, 0, 0.448681, 0, 0, 1, 0.030891, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.307465, 0, 1, 0, -0.181798, 0, 0, 1, 0.00347884, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00190053, 0, 1, 0, -0.271866, 0, 0, 1, 0.0152269, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342709, 0, 1, 0, -0.177882, 0, 0, 1, -0.000437174, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362289, 0, 1, 0, -0.162218, 0, 0, 1, -0.000437174, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358373, 0, 1, 0, -0.150469, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.338793, 0, 1, 0, -0.138721, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.319098, 0, 1, 0, -0.201378, 0, 0, 1, 0.00347884, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362174, 0, 1, 0, -0.181798, 0, 0, 1, -0.000437174, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.330846, 0, 1, 0, -0.162218, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362174, 0, 1, 0, -0.150469, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.342594, 0, 1, 0, -0.138721, 0, 0, 1, 0.00739486, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0999159, 0, 1, 0, 0.491757, 0, 0, 1, 0.0896312, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.103717, 0, 1, 0, 0.491757, 0, 0, 1, 0.0896312, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.315297, 0, 1, 0, -0.201378, 0, 0, 1, 0.00347884, 0, 0, 0, 1)
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
                id: staff_42_trim
                objectName: "staff_42_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00190053, -0.0414154, -0.050471)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0509082, 0.00391601)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0587403, 0.00391602)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0665723, 0.00783204)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0744043, 0.0117481)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0626563, 0.00783204)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0313281, 0.0626563, 0.0117481)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0587403, -0.0156641, 0.00391602)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0822364, -0.0234961, 0.00391602)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.117481, 0, 0.00391602)
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0391602, 0.0156641, 0.0117481)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0156641, 0.00391603, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0156641, 0.00391601, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0391602, 0.00391603, 0.00783203)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0156641, 0, 0.00391602)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0195801, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0391602, -0.00783202, 0.00391602)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0156641, 0, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0156641, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0352442, -0.0195801, 0.00391602)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0156641, 0, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.011748, 0, 0)
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
                                    position: Qt.vector3d(0.0313281, 0.0626563, 0.0117481)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0587403, -0.0156641, 0)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0822364, -0.0234961, 0.00783204)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.117481, 0, 0.00391602)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.011748, 0.0117481, 0.00391602)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.00783202, 0.011748, 0.00391602)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00783205, 0.0195801, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0391602, 0.0156641, 0.0117481)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0156641, 0.00391603, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0156641, 0.00391601, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0391602, 0.00391603, 0.00391602)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0156641, 0, 0.00391602)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0195801, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0391602, -0.00783202, 0.00391602)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0156641, 0, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0156641, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0352441, -0.0195801, 0.00391602)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0156641, 0, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.011748, 0, 0)
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
                        position: Qt.vector3d(-0.0587403, -0.0274121, 0.00783203)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0156641, -0.207549, 0.0117481)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0156641, -0.172305, 0)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0117481, -0.0430762, -0.0587403)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0587403, -0.0274121, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0156641, -0.207549, 0.0195801)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0156641, -0.172305, 0)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0117481, -0.0430762, -0.0587403)
                                }
                            }
                        }
                    }
                }
            }
        }
        Node {
            id: joint_10
            objectName: "joint_10"
            position: Qt.vector3d(-0.299633, 0.17005, -0.00739486)
            Node {
                id: joint_11
                objectName: "joint_11"
                position: Qt.vector3d(-0.00783202, 0.0117481, 0.00391601)
                Node {
                    id: joint_12
                    objectName: "joint_12"
                    position: Qt.vector3d(-0.00783202, 0.0195801, 0)
                }
            }
        }
        Model {
            id: typing_mesh
            objectName: "Typing_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1794642472617_mesh_mat_material
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
            target: joint_42
            property: "rotation"
            keyframeSource: "animations/joint_42_rotation_0.qad"
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
            target: joint_36
            property: "rotation"
            keyframeSource: "animations/joint_36_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.776085, 0.314599, -0.375481, 0.397157)
            }
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
            target: joint_41
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.724157, 0.361239, -0.467261, 0.356048)
            }
        }
        KeyframeGroup {
            target: joint_39
            property: "rotation"
            keyframeSource: "animations/joint_39_rotation_0.qad"
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
                value: Qt.quaternion(0.935316, 0.304954, -0.16837, 0.0619535)
            }
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.724157, 0.361239, -0.467262, 0.356048)
            }
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.763424, 0.412942, -0.421373, 0.262883)
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
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.942482, 0.305843, 0.0199961, -0.133371)
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
                value: Qt.quaternion(0.985907, 0.0372289, -0.0140319, -0.162496)
            }
        }
        KeyframeGroup {
            target: joint_42
            property: "rotation"
            keyframeSource: "animations/joint_42_rotation_1.qad"
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
            target: joint_36
            property: "rotation"
            keyframeSource: "animations/joint_36_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.786823, 0.352696, -0.385277, 0.328752)
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
                value: Qt.quaternion(0.993874, 0.100519, -0.0402077, -0.0222238)
            }
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
            target: joint_41
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.834342, 0.395599, -0.280776, 0.2618)
            }
        }
        KeyframeGroup {
            target: joint_39
            property: "rotation"
            keyframeSource: "animations/joint_39_rotation_1.qad"
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
                value: Qt.quaternion(0.939989, 0.282169, -0.176629, -0.07486)
            }
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.801319, 0.409555, -0.365227, 0.238248)
            }
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.806631, 0.447499, -0.355591, 0.150488)
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
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.925097, 0.356762, 0.0355459, -0.12511)
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
                value: Qt.quaternion(0.985907, 0.037229, -0.0140319, -0.162496)
            }
        }
        KeyframeGroup {
            target: joint_42
            property: "rotation"
            keyframeSource: "animations/joint_42_rotation_2.qad"
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
                value: Qt.quaternion(0.993669, 0.0214252, -0.0180446, -0.108803)
            }
        }
        KeyframeGroup {
            target: joint_36
            property: "rotation"
            keyframeSource: "animations/joint_36_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.786822, 0.352696, -0.385277, 0.328752)
            }
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            keyframeSource: "animations/joint_34_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.100519, -0.0402077, -0.0222237)
            }
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
            target: joint_41
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.834342, 0.395599, -0.280776, 0.2618)
            }
        }
        KeyframeGroup {
            target: joint_39
            property: "rotation"
            keyframeSource: "animations/joint_39_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_33
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990627, 0.054051, 0.015478, -0.12449)
            }
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.939989, 0.282169, -0.176629, -0.0748601)
            }
        }
        KeyframeGroup {
            target: leftLeg
            property: "rotation"
            keyframeSource: "animations/leftLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.801319, 0.409555, -0.365227, 0.238248)
            }
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.806631, 0.447499, -0.355591, 0.150488)
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
            target: rightUpLeg
            property: "rotation"
            keyframeSource: "animations/rightUpLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.925097, 0.356762, 0.0355458, -0.12511)
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
