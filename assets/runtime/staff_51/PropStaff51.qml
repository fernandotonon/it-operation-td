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
        id: qtmesh_gen3d_1_1794643144712_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794643144712_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794643144712_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794643144712_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794643144712_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794643144712_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794643144712_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794643144712_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794643144712_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794643144712_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794643144712_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794643144712_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794643144712_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794643144712_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794643144712_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_51_trim,
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
            Qt.matrix4x4(1, 0, 0, -0.00233036, 0, 1, 0, 0.0956818, 0, 0, 1, -0.0247019, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00233036, 0, 1, 0, 0.0447367, 0, 0, 1, -0.0247019, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00233036, 0, 1, 0, -0.017965, 0, 0, 1, -0.0286208, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00233036, 0, 1, 0, -0.0924233, 0, 0, 1, -0.0325396, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0368582, 0, 1, 0, -0.155125, 0, 0, 1, -0.0364585, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.119154, 0, 1, 0, -0.119855, 0, 0, 1, -0.0442962, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.205369, 0, 1, 0, -0.112018, 0, 0, 1, -0.0442962, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.330772, 0, 1, 0, -0.115936, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0415189, 0, 1, 0, -0.155125, 0, 0, 1, -0.0364585, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.123815, 0, 1, 0, -0.119855, 0, 0, 1, -0.0442962, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.21003, 0, 1, 0, -0.112018, 0, 0, 1, -0.0442962, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.335433, 0, 1, 0, -0.115936, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0525336, 0, 1, 0, 0.123114, 0, 0, 1, -0.020783, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0571944, 0, 1, 0, 0.123114, 0, 0, 1, -0.020783, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342529, 0, 1, 0, -0.131612, 0, 0, 1, -0.0364585, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.377799, 0, 1, 0, -0.135531, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.377799, 0, 1, 0, -0.119855, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.377799, 0, 1, 0, -0.10418, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.37388, 0, 1, 0, -0.0924233, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.34719, 0, 1, 0, -0.131612, 0, 0, 1, -0.0364585, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.382459, 0, 1, 0, -0.135531, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.382459, 0, 1, 0, -0.119855, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.382459, 0, 1, 0, -0.10418, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.378541, 0, 1, 0, -0.0924233, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0682091, 0, 1, 0, 0.295544, 0, 0, 1, -0.0325396, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0728698, 0, 1, 0, 0.295544, 0, 0, 1, -0.0325396, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00233036, 0, 1, 0, -0.1708, 0, 0, 1, -0.0364585, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354286, 0, 1, 0, -0.143368, 0, 0, 1, -0.0325396, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.397393, 0, 1, 0, -0.13945, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.401312, 0, 1, 0, -0.119855, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.401312, 0, 1, 0, -0.10418, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.397393, 0, 1, 0, -0.0885045, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358946, 0, 1, 0, -0.143368, 0, 0, 1, -0.0325396, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.402054, 0, 1, 0, -0.13945, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.405973, 0, 1, 0, -0.119855, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.405973, 0, 1, 0, -0.10418, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.402054, 0, 1, 0, -0.0885045, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0838845, 0, 1, 0, 0.448379, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0885452, 0, 1, 0, 0.448379, 0, 0, 1, -0.0364585, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00233036, 0, 1, 0, -0.233502, 0, 0, 1, -0.0325396, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362123, 0, 1, 0, -0.162963, 0, 0, 1, -0.0286208, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.416987, 0, 1, 0, -0.143368, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.424825, 0, 1, 0, -0.119855, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.420906, 0, 1, 0, -0.10418, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.413068, 0, 1, 0, -0.0845856, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366784, 0, 1, 0, -0.162963, 0, 0, 1, -0.0286208, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.421648, 0, 1, 0, -0.143368, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.429486, 0, 1, 0, -0.119855, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.425567, 0, 1, 0, -0.10418, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.417729, 0, 1, 0, -0.0845856, 0, 0, 1, -0.0403773, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0995599, 0, 1, 0, 0.487568, 0, 0, 1, 0.0536752, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.104221, 0, 1, 0, 0.487568, 0, 0, 1, 0.0536752, 0, 0, 0, 1)
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
                id: staff_51_trim
                objectName: "staff_51_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00233036, -0.0956818, 0.0247019)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0509451, 0)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0627017, 0.00391886)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0744583, 0.00391886)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0783771, 0.00391886)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0627017, -0.00391886)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0391886, 0.0627017, 0.00391886)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.082296, -0.0352697, 0.00783771)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0862148, -0.00783771, 0)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.125403, 0.00391886, -0.00391886)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0117566, 0.0156754, -0.00391886)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0117566, 0.0117566, -0.00391886)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00783771, 0.0195943, -0.00391886)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0470263, 0.0195943, 0)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0195943, 0.00391886, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0195943, 0.00391886, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0470263, 0.00391886, 0)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0235131, 0, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0235132, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0470263, -0.0117566, 0)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0235131, 0, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0195943, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0431074, -0.0235131, 0)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0235131, -0.00391886, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0156754, -0.00391886, 0)
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
                                    position: Qt.vector3d(0.0391886, 0.0627017, 0.00391886)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.082296, -0.0352697, 0.00783771)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0862149, -0.00783771, 0)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.125403, 0.00391886, -0.00391886)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0117566, 0.0156754, -0.00391886)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0117566, 0.0117566, -0.00391886)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00783771, 0.0195943, -0.00391886)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0470263, 0.0195943, 0)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0195943, 0.00391886, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0195943, 0.00391886, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0470263, 0.00391886, 0)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0235131, 0, 0)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0235132, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0470263, -0.0117566, 0)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0235131, 0, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0195943, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0431074, -0.0235131, 0)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0235131, -0.00391886, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0156754, -0.00391886, 0)
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
                        position: Qt.vector3d(-0.054864, -0.027432, -0.00391886)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0156754, -0.17243, 0.0117566)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0156754, -0.152835, 0.00783771)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0156754, -0.0391886, -0.0940526)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.054864, -0.027432, -0.00391886)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0156754, -0.17243, 0.0117566)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0156754, -0.152835, 0.00391886)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0156754, -0.0391886, -0.0901337)
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
                qtmesh_gen3d_1_1794643144712_mesh_mat_material
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
                value: Qt.quaternion(0.759441, 0.402664, -0.258381, 0.440852)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.793917, 0.422814, -0.2232, 0.375641)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.793917, 0.422814, -0.2232, 0.375641)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.82644, 0.442715, -0.181514, 0.296738)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.792156, 0.42571, 0.225622, -0.374639)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.825843, 0.445908, 0.181507, -0.293605)
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
                value: Qt.quaternion(0.948892, 0.295603, 0.0248875, 0.107717)
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
                value: Qt.quaternion(0.949721, 0.293726, -0.025867, -0.105288)
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
                value: Qt.quaternion(0.792156, 0.42571, 0.225622, -0.374639)
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
                value: Qt.quaternion(0.759341, 0.405953, 0.258895, -0.437695)
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
                value: Qt.quaternion(0.985907, 0.0292554, -0.0364773, -0.160628)
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
                value: Qt.quaternion(0.993669, 0.0264185, -0.0228454, -0.106784)
            }
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.0992447, -0.0438883, -0.0209522)
            }
        }
        KeyframeGroup {
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0295573, 0.0352846, 0.158228)
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
                value: Qt.quaternion(0.961148, 0.184607, -0.0465633, -0.199867)
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
                value: Qt.quaternion(0.846999, 0.411538, -0.06621, 0.329918)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.859729, 0.432986, -0.121894, 0.24193)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.846955, 0.434224, -0.165011, 0.258628)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.83794, 0.45837, -0.197147, 0.221106)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.856924, 0.449783, 0.146393, -0.204804)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.84763, 0.468866, 0.176666, -0.174577)
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
                value: Qt.quaternion(0.918278, 0.347118, 0.0275192, 0.188458)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.96671, 0.184983, 0.0482755, 0.170068)
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
                value: Qt.quaternion(0.839178, 0.439639, 0.180493, -0.264425)
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
                value: Qt.quaternion(0.838362, 0.411427, 0.165826, -0.316826)
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
                value: Qt.quaternion(0.985907, 0.0292554, -0.0364773, -0.160628)
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
            keyframeSource: "animations/joint_34_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_31
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.993874, 0.0992447, -0.0438884, -0.0209522)
            }
        }
        KeyframeGroup {
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0295574, 0.0352844, 0.158228)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.990627, 0.0563451, -0.00988541, -0.124042)
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
                value: Qt.quaternion(0.961148, 0.184606, -0.0465633, -0.199868)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.99707, 0.0686544, 0.0303944, 0.0146632)
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
                value: Qt.quaternion(0.846999, 0.411538, -0.06621, 0.329918)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.859729, 0.432986, -0.121894, 0.24193)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.846955, 0.434224, -0.165011, 0.258628)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.83794, 0.458369, -0.197147, 0.221106)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.856924, 0.449783, 0.146394, -0.204804)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.84763, 0.468866, 0.176666, -0.174577)
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
                value: Qt.quaternion(0.918278, 0.347118, 0.0275192, 0.188458)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.96671, 0.184983, 0.0482756, 0.170068)
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
                value: Qt.quaternion(0.839178, 0.439639, 0.180493, -0.264425)
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
                value: Qt.quaternion(0.838362, 0.411426, 0.165826, -0.316826)
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
