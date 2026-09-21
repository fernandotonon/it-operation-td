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
        id: qtmesh_gen3d_1_1789983287109_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1789983287109_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789983287109_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1789983287109_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1789983287109_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789983287109_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1789983287109_normal_png_texture
        objectName: "qtmesh_gen3d_1_1789983287109_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1789983287109_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1789983287109_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1789983287109_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1789983287109_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1789983287109_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1789983287109_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1789983287109_normal_png_texture
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
            joint_13,
            joint_16,
            joint_22,
            joint_29,
            joint_32,
            joint_35,
            joint_41,
            leftLeg,
            rightLeg,
            neck,
            joint_11,
            joint_14,
            joint_17,
            joint_19,
            joint_23,
            joint_30,
            joint_33,
            joint_36,
            joint_38,
            joint_42,
            leftFoot,
            rightFoot,
            head,
            joint_12,
            joint_15,
            joint_18,
            joint_20,
            joint_24,
            joint_31,
            joint_34,
            joint_37,
            joint_39,
            joint_43,
            joint_47,
            joint_51
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, -0.00196183, 0, 1, 0, 0.04373, 0, 0, 1, -0.0188022, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00196183, 0, 1, 0, 0.000741787, 0, 0, 1, -0.0227102, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00196183, 0, 1, 0, -0.0539705, 0, 0, 1, -0.0266182, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00196183, 0, 1, 0, -0.116499, 0, 0, 1, -0.0305262, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0332103, 0, 1, 0, -0.171211, 0, 0, 1, -0.0344343, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.037134, 0, 1, 0, -0.171211, 0, 0, 1, -0.0344343, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0996467, 0, 1, 0, -0.139947, 0, 0, 1, -0.0344343, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.10357, 0, 1, 0, -0.139947, 0, 0, 1, -0.0344343, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.181715, 0, 1, 0, -0.128223, 0, 0, 1, -0.0422503, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.185639, 0, 1, 0, -0.128223, 0, 0, 1, -0.0422503, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.287232, 0, 1, 0, -0.132131, 0, 0, 1, -0.0422503, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.291155, 0, 1, 0, -0.132131, 0, 0, 1, -0.0422503, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0449344, 0, 1, 0, 0.0749942, 0, 0, 1, -0.0188022, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0488581, 0, 1, 0, 0.0749942, 0, 0, 1, -0.0188022, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.302864, 0, 1, 0, -0.139947, 0, 0, 1, -0.0344343, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.334128, 0, 1, 0, -0.151671, 0, 0, 1, -0.0461583, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.334128, 0, 1, 0, -0.136039, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.33022, 0, 1, 0, -0.112591, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.306787, 0, 1, 0, -0.143855, 0, 0, 1, -0.0344343, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.338052, 0, 1, 0, -0.151671, 0, 0, 1, -0.0461583, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.338052, 0, 1, 0, -0.136039, 0, 0, 1, -0.0500663, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.334143, 0, 1, 0, -0.108683, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0566585, 0, 1, 0, 0.266487, 0, 0, 1, -0.0188022, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0605821, 0, 1, 0, 0.266487, 0, 0, 1, -0.0188022, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00196183, 0, 1, 0, -0.186843, 0, 0, 1, -0.0344343, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.314588, 0, 1, 0, -0.147763, 0, 0, 1, -0.0305262, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.345852, 0, 1, 0, -0.159487, 0, 0, 1, -0.0500663, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.34976, 0, 1, 0, -0.139947, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.334128, 0, 1, 0, -0.124315, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.345852, 0, 1, 0, -0.108683, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.318511, 0, 1, 0, -0.151671, 0, 0, 1, -0.0305262, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.349776, 0, 1, 0, -0.159487, 0, 0, 1, -0.0500663, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.353684, 0, 1, 0, -0.139947, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.338052, 0, 1, 0, -0.124315, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.349776, 0, 1, 0, -0.108683, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0761986, 0, 1, 0, 0.442348, 0, 0, 1, -0.0344343, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0801222, 0, 1, 0, 0.442348, 0, 0, 1, -0.0266182, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00196183, 0, 1, 0, -0.229831, 0, 0, 1, -0.0266182, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.318496, 0, 1, 0, -0.163395, 0, 0, 1, -0.0266182, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.357576, 0, 1, 0, -0.163395, 0, 0, 1, -0.0500663, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.365392, 0, 1, 0, -0.143855, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.34976, 0, 1, 0, -0.124315, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.357576, 0, 1, 0, -0.108683, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.322419, 0, 1, 0, -0.163395, 0, 0, 1, -0.0266182, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.3615, 0, 1, 0, -0.163395, 0, 0, 1, -0.0500663, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.369316, 0, 1, 0, -0.143855, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.353684, 0, 1, 0, -0.124315, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.3615, 0, 1, 0, -0.108683, 0, 0, 1, -0.0539744, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0840146, 0, 1, 0, 0.485336, 0, 0, 1, 0.0320021, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0879383, 0, 1, 0, 0.485336, 0, 0, 1, 0.0359101, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: a5
        objectName: "a5"
        Node {
            id: staff_05_trim
            objectName: "staff_05_trim"
            Node {
                id: hips
                objectName: "Hips"
                position: Qt.vector3d(0.00196183, -0.04373, 0.0188022)
                Node {
                    id: spine
                    objectName: "Spine"
                    position: Qt.vector3d(0, 0.0429882, 0.00390802)
                    Node {
                        id: spine1
                        objectName: "Spine1"
                        position: Qt.vector3d(0, 0.0547123, 0.00390802)
                        Node {
                            id: spine2
                            objectName: "Spine2"
                            position: Qt.vector3d(0, 0.0625283, 0.00390802)
                            Node {
                                id: neck
                                objectName: "Neck"
                                position: Qt.vector3d(0, 0.0703444, 0.00390802)
                                Node {
                                    id: head
                                    objectName: "Head"
                                    position: Qt.vector3d(0, 0.0429882, -0.00781604)
                                }
                            }
                            Node {
                                id: leftArm
                                objectName: "LeftArm"
                                position: Qt.vector3d(-0.0351722, 0.0547123, 0.00390802)
                                Node {
                                    id: leftForeArm
                                    objectName: "LeftForeArm"
                                    position: Qt.vector3d(-0.0664363, -0.0312642, 0)
                                    Node {
                                        id: leftHand
                                        objectName: "LeftHand"
                                        position: Qt.vector3d(-0.0820684, -0.0117241, 0.00781604)
                                        Node {
                                            id: joint_9
                                            objectName: "joint_9"
                                            position: Qt.vector3d(-0.105517, 0.00390801, 0)
                                            Node {
                                                id: joint_10
                                                objectName: "joint_10"
                                                position: Qt.vector3d(-0.0156321, 0.00781605, -0.00781604)
                                                Node {
                                                    id: joint_11
                                                    objectName: "joint_11"
                                                    position: Qt.vector3d(-0.0117241, 0.00781603, -0.00390802)
                                                    Node {
                                                        id: joint_12
                                                        objectName: "joint_12"
                                                        position: Qt.vector3d(-0.00390801, 0.0156321, -0.00390802)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_13
                                                objectName: "joint_13"
                                                position: Qt.vector3d(-0.0468962, 0.0195401, 0.00390802)
                                                Node {
                                                    id: joint_14
                                                    objectName: "joint_14"
                                                    position: Qt.vector3d(-0.0117241, 0.00781605, 0.00390802)
                                                    Node {
                                                        id: joint_15
                                                        objectName: "joint_15"
                                                        position: Qt.vector3d(-0.0117241, 0.00390801, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_16
                                                objectName: "joint_16"
                                                position: Qt.vector3d(-0.0468962, 0.00390802, 0.0117241)
                                                Node {
                                                    id: joint_17
                                                    objectName: "joint_17"
                                                    position: Qt.vector3d(-0.0156321, 0.00390802, 0)
                                                    Node {
                                                        id: joint_18
                                                        objectName: "joint_18"
                                                        position: Qt.vector3d(-0.0156321, 0.00390802, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_19
                                                objectName: "joint_19"
                                                position: Qt.vector3d(-0.0468962, -0.00781603, 0.0117241)
                                                Node {
                                                    id: joint_20
                                                    objectName: "joint_20"
                                                    position: Qt.vector3d(-0.0156321, 0, 0)
                                                    Node {
                                                        id: joint_21
                                                        objectName: "joint_21"
                                                        position: Qt.vector3d(-0.0156321, 0, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_22
                                                objectName: "joint_22"
                                                position: Qt.vector3d(-0.0429882, -0.0195401, 0.0117241)
                                                Node {
                                                    id: joint_23
                                                    objectName: "joint_23"
                                                    position: Qt.vector3d(-0.0156321, -0.00390802, 0)
                                                    Node {
                                                        id: joint_24
                                                        objectName: "joint_24"
                                                        position: Qt.vector3d(-0.0117241, 0, 0)
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
                                position: Qt.vector3d(0.0351722, 0.0547123, 0.00390802)
                                Node {
                                    id: rightForeArm
                                    objectName: "RightForeArm"
                                    position: Qt.vector3d(0.0664363, -0.0312642, 0)
                                    Node {
                                        id: rightHand
                                        objectName: "RightHand"
                                        position: Qt.vector3d(0.0820684, -0.0117241, 0.00781604)
                                        Node {
                                            id: joint_28
                                            objectName: "joint_28"
                                            position: Qt.vector3d(0.105517, 0.00390801, 0)
                                            Node {
                                                id: joint_29
                                                objectName: "joint_29"
                                                position: Qt.vector3d(0.0156321, 0.0117241, -0.00781604)
                                                Node {
                                                    id: joint_30
                                                    objectName: "joint_30"
                                                    position: Qt.vector3d(0.0117241, 0.00781603, -0.00390802)
                                                    Node {
                                                        id: joint_31
                                                        objectName: "joint_31"
                                                        position: Qt.vector3d(0.00390801, 0.0117241, -0.00390802)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_32
                                                objectName: "joint_32"
                                                position: Qt.vector3d(0.0468962, 0.0195401, 0.00390802)
                                                Node {
                                                    id: joint_33
                                                    objectName: "joint_33"
                                                    position: Qt.vector3d(0.0117241, 0.00781605, 0.00390802)
                                                    Node {
                                                        id: joint_34
                                                        objectName: "joint_34"
                                                        position: Qt.vector3d(0.0117241, 0.00390801, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_35
                                                objectName: "joint_35"
                                                position: Qt.vector3d(0.0468962, 0.00390802, 0.00781604)
                                                Node {
                                                    id: joint_36
                                                    objectName: "joint_36"
                                                    position: Qt.vector3d(0.0156321, 0.00390802, 0.00390802)
                                                    Node {
                                                        id: joint_37
                                                        objectName: "joint_37"
                                                        position: Qt.vector3d(0.0156321, 0.00390802, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_38
                                                objectName: "joint_38"
                                                position: Qt.vector3d(0.0468962, -0.00781603, 0.0117241)
                                                Node {
                                                    id: joint_39
                                                    objectName: "joint_39"
                                                    position: Qt.vector3d(0.0156321, 0, 0)
                                                    Node {
                                                        id: joint_40
                                                        objectName: "joint_40"
                                                        position: Qt.vector3d(0.0156321, 0, 0)
                                                    }
                                                }
                                            }
                                            Node {
                                                id: joint_41
                                                objectName: "joint_41"
                                                position: Qt.vector3d(0.0429882, -0.0234481, 0.0117241)
                                                Node {
                                                    id: joint_42
                                                    objectName: "joint_42"
                                                    position: Qt.vector3d(0.0156321, 0, 0)
                                                    Node {
                                                        id: joint_43
                                                        objectName: "joint_43"
                                                        position: Qt.vector3d(0.0117241, 0, 0)
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
                    position: Qt.vector3d(-0.0468962, -0.0312642, 0)
                    Node {
                        id: leftLeg
                        objectName: "LeftLeg"
                        position: Qt.vector3d(-0.0117241, -0.191493, 0)
                        Node {
                            id: leftFoot
                            objectName: "LeftFoot"
                            position: Qt.vector3d(-0.0195401, -0.175861, 0.0156321)
                            Node {
                                id: joint_47
                                objectName: "joint_47"
                                position: Qt.vector3d(-0.00781604, -0.0429882, -0.0664363)
                            }
                        }
                    }
                }
                Node {
                    id: rightUpLeg
                    objectName: "RightUpLeg"
                    position: Qt.vector3d(0.0468962, -0.0312642, 0)
                    Node {
                        id: rightLeg
                        objectName: "RightLeg"
                        position: Qt.vector3d(0.0117241, -0.191493, 0)
                        Node {
                            id: rightFoot
                            objectName: "RightFoot"
                            position: Qt.vector3d(0.0195401, -0.175861, 0.00781604)
                            Node {
                                id: joint_51
                                objectName: "joint_51"
                                position: Qt.vector3d(0.00781604, -0.0429882, -0.0625283)
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
                qtmesh_gen3d_1_1789983287109_mesh_mat_material
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
