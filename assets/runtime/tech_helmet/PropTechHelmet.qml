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
        id: qtmesh_gen3d_1_1794460359717_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794460359717_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794460359717_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794460359717_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794460359717_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794460359717_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794460359717_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794460359717_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794460359717_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794460359717_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794460359717_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794460359717_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794460359717_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794460359717_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794460359717_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            tech_helmet,
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
            joint_16,
            joint_29,
            joint_32,
            joint_35,
            joint_38,
            leftLeg,
            rightLeg,
            neck,
            joint_11,
            joint_17,
            joint_19,
            joint_30,
            joint_33,
            joint_36,
            joint_39,
            joint_41,
            leftFoot,
            rightFoot,
            head,
            joint_12,
            joint_13,
            joint_18,
            joint_20,
            joint_22,
            joint_31,
            joint_34,
            joint_37,
            joint_40,
            joint_42,
            joint_47,
            joint_51,
            joint_15
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00197213, 0, 1, 0, 0.0804854, 0, 0, 1, -0.0245045, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00197213, 0, 1, 0, 0.0334118, 0, 0, 1, -0.0284273, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00197213, 0, 1, 0, -0.0254302, 0, 0, 1, -0.0323501, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00197213, 0, 1, 0, -0.0921177, 0, 0, 1, -0.0362729, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0333331, 0, 1, 0, -0.15096, 0, 0, 1, -0.0401957, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.100021, 0, 1, 0, -0.131346, 0, 0, 1, -0.0441185, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.186322, 0, 1, 0, -0.127423, 0, 0, 1, -0.0401957, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.280469, 0, 1, 0, -0.131346, 0, 0, 1, -0.0284273, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0372773, 0, 1, 0, -0.15096, 0, 0, 1, -0.0401957, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.103965, 0, 1, 0, -0.131346, 0, 0, 1, -0.0441185, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.190266, 0, 1, 0, -0.127423, 0, 0, 1, -0.0401957, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.284414, 0, 1, 0, -0.131346, 0, 0, 1, -0.0284273, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0490243, 0, 1, 0, 0.107945, 0, 0, 1, -0.0205817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0529685, 0, 1, 0, 0.107945, 0, 0, 1, -0.0205817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.292238, 0, 1, 0, -0.143114, 0, 0, 1, -0.0245045, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327543, 0, 1, 0, -0.15096, 0, 0, 1, -0.0205817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.296182, 0, 1, 0, -0.147037, 0, 0, 1, -0.0245045, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331487, 0, 1, 0, -0.162728, 0, 0, 1, -0.0245045, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331487, 0, 1, 0, -0.15096, 0, 0, 1, -0.0205817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.33541, 0, 1, 0, -0.139191, 0, 0, 1, -0.0166589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0647154, 0, 1, 0, 0.280548, 0, 0, 1, -0.0205817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0686597, 0, 1, 0, 0.280548, 0, 0, 1, -0.0205817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00197213, 0, 1, 0, -0.162728, 0, 0, 1, -0.0401957, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.300083, 0, 1, 0, -0.154883, 0, 0, 1, -0.0205817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.339311, 0, 1, 0, -0.158805, 0, 0, 1, -0.0166589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.331466, 0, 1, 0, -0.139191, 0, 0, 1, -0.0166589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.304028, 0, 1, 0, -0.158805, 0, 0, 1, -0.0205817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331487, 0, 1, 0, -0.162728, 0, 0, 1, -0.0245045, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.343256, 0, 1, 0, -0.158805, 0, 0, 1, -0.0166589, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.347178, 0, 1, 0, -0.143114, 0, 0, 1, -0.0127361, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.33541, 0, 1, 0, -0.1235, 0, 0, 1, -0.0127361, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0804066, 0, 1, 0, 0.429614, 0, 0, 1, -0.0401957, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0843509, 0, 1, 0, 0.429614, 0, 0, 1, -0.0401957, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00197213, 0, 1, 0, -0.213724, 0, 0, 1, -0.0323501, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.304006, 0, 1, 0, -0.170574, 0, 0, 1, -0.0205817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327543, 0, 1, 0, -0.162728, 0, 0, 1, -0.0245045, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.35108, 0, 1, 0, -0.162728, 0, 0, 1, -0.0127361, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.343234, 0, 1, 0, -0.143114, 0, 0, 1, -0.0127361, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327543, 0, 1, 0, -0.1235, 0, 0, 1, -0.0127361, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.30795, 0, 1, 0, -0.170574, 0, 0, 1, -0.0205817, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331487, 0, 1, 0, -0.162728, 0, 0, 1, -0.0245045, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.355024, 0, 1, 0, -0.162728, 0, 0, 1, -0.0127361, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358947, 0, 1, 0, -0.147037, 0, 0, 1, -0.00881334, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.347178, 0, 1, 0, -0.127423, 0, 0, 1, -0.00881334, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.103943, 0, 1, 0, 0.496302, 0, 0, 1, 0.0578742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.107888, 0, 1, 0, 0.496302, 0, 0, 1, 0.0578742, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327543, 0, 1, 0, -0.162728, 0, 0, 1, -0.0245045, 0, 0, 0, 1)
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
                id: tech_helmet
                objectName: "tech_helmet"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00197213, -0.0804854, 0.0245045)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0470736, 0.0039228)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.058842, 0.0039228)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0666876, 0.0039228)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0706104, 0.0039228)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0509964, -0.0078456)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0353052, 0.058842, 0.0039228)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0666876, -0.019614, 0.0039228)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0863016, -0.00392281, -0.0039228)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.0941471, 0.00392281, -0.0117684)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0117684, 0.0117684, -0.0039228)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.00784561, 0.0117684, -0.0039228)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00392279, 0.0156912, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0470736, 0.0313824, -0.0039228)
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0470736, 0.019614, -0.0078456)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0117684, 0.00784561, -0.0039228)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0117684, 0.00392279, -0.0039228)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0509964, 0.0078456, -0.0117684)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0117684, 0.00392279, -0.0039228)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0117684, 0.00392281, -0.0039228)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0470736, -0.0078456, -0.0156912)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0156912, 0.0039228, -0.0039228)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
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
                                    position: Qt.vector3d(0.0353052, 0.058842, 0.0039228)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0666876, -0.019614, 0.0039228)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0863016, -0.00392281, -0.0039228)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.0941472, 0.00392281, -0.0117684)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0117684, 0.0156912, -0.0039228)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.00784558, 0.0117684, -0.0039228)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00392279, 0.0117684, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0470736, 0.0313824, -0.0039228)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0470736, 0.019614, -0.0078456)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0117684, 0.00784561, -0.0039228)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0117684, 0.00392279, -0.0039228)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0509964, 0.0078456, -0.0117684)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0117684, 0.00392279, -0.0039228)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0117684, 0.00392281, -0.0039228)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0509964, -0.0078456, -0.0156912)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0117684, 0.0039228, -0.0039228)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
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
                        position: Qt.vector3d(-0.0509964, -0.0274596, -0.0039228)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0156912, -0.172603, 0)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0156912, -0.149066, 0.019614)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0235368, -0.0666876, -0.09807)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0509964, -0.0274596, -0.0039228)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0156912, -0.172603, 0)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0156912, -0.149066, 0.019614)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0235368, -0.0666876, -0.09807)
                                }
                            }
                        }
                    }
                }
            }
        }
        Node {
            id: joint_14
            objectName: "joint_14"
            position: Qt.vector3d(-0.327543, 0.162728, 0.0245045)
            Node {
                id: joint_15
                objectName: "joint_15"
            }
        }
        Model {
            id: typing_mesh
            objectName: "Typing_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1794460359717_mesh_mat_material
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
                value: Qt.quaternion(0.797878, 0.505167, -0.276166, 0.178688)
            }
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
                value: Qt.quaternion(0.967979, 0.192917, 0.159641, -0.0177243)
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
                value: Qt.quaternion(0.797878, 0.505167, -0.276166, 0.178688)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.827499, 0.517278, -0.205554, 0.0735943)
            }
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
            target: joint_32
            property: "rotation"
            keyframeSource: "animations/joint_32_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.940547, 0.268014, -0.0523834, -0.201978)
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
            target: joint_34
            property: "rotation"
            keyframeSource: "animations/joint_34_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            keyframeSource: "animations/joint_31_rotation_1.qad"
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
                value: Qt.quaternion(0.885481, 0.45035, -0.101405, 0.0531478)
            }
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990627, 0.0471435, 0.123516, -0.0343524)
            }
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.970648, 0.142893, 0.129374, -0.143826)
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
                value: Qt.quaternion(0.857305, 0.478755, -0.185673, 0.0367095)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            keyframeSource: "animations/joint_35_rotation_1.qad"
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
            target: joint_32
            property: "rotation"
            keyframeSource: "animations/joint_32_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.922323, 0.31368, -0.0339127, -0.223105)
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
            keyframeSource: "animations/joint_43_rotation_2.qad"
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
            keyframeSource: "animations/joint_37_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_34
            property: "rotation"
            keyframeSource: "animations/joint_34_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            keyframeSource: "animations/joint_31_rotation_2.qad"
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
                value: Qt.quaternion(0.885481, 0.45035, -0.101405, 0.0531478)
            }
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990627, 0.0471435, 0.123516, -0.0343525)
            }
        }
        KeyframeGroup {
            target: joint_30
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.970648, 0.142893, 0.129374, -0.143826)
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
                value: Qt.quaternion(0.857305, 0.478755, -0.185673, 0.0367095)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            keyframeSource: "animations/joint_35_rotation_2.qad"
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
            target: joint_32
            property: "rotation"
            keyframeSource: "animations/joint_32_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_29
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.922323, 0.31368, -0.0339129, -0.223105)
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
    }
}
