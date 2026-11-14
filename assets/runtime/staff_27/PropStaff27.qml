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
        id: qtmesh_gen3d_1_1794647984097_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794647984097_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794647984097_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794647984097_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794647984097_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794647984097_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794647984097_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794647984097_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794647984097_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794647984097_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794647984097_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794647984097_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794647984097_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794647984097_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794647984097_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_27_trim,
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
            joint_33,
            joint_36,
            joint_39,
            joint_42,
            leftFoot,
            rightFoot,
            joint_30,
            head,
            joint_12,
            joint_15,
            joint_18,
            joint_21,
            joint_24,
            joint_34,
            joint_37,
            joint_40,
            joint_43,
            joint_47,
            joint_51,
            joint_31
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0017464, 0, 1, 0, 0.0884232, 0, 0, 1, -0.00836737, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0017464, 0, 1, 0, 0.0375257, 0, 0, 1, -0.0122826, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0017464, 0, 1, 0, -0.0212021, 0, 0, 1, -0.0161978, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0017464, 0, 1, 0, -0.0916756, 0, 0, 1, -0.0240281, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0334903, 0, 1, 0, -0.154319, 0, 0, 1, -0.0318585, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.107879, 0, 1, 0, -0.130827, 0, 0, 1, -0.0396889, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.182268, 0, 1, 0, -0.126912, 0, 0, 1, -0.0553497, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.284063, 0, 1, 0, -0.122997, 0, 0, 1, -0.082756, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0369831, 0, 1, 0, -0.154319, 0, 0, 1, -0.0279433, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.111372, 0, 1, 0, -0.130827, 0, 0, 1, -0.0357737, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.18576, 0, 1, 0, -0.126912, 0, 0, 1, -0.0553497, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.287555, 0, 1, 0, -0.122997, 0, 0, 1, -0.082756, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0491511, 0, 1, 0, 0.11583, 0, 0, 1, -0.00836737, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0526439, 0, 1, 0, 0.11583, 0, 0, 1, -0.00836737, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.295808, 0, 1, 0, -0.134743, 0, 0, 1, -0.0866712, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.323214, 0, 1, 0, -0.138658, 0, 0, 1, -0.106247, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.323214, 0, 1, 0, -0.122997, 0, 0, 1, -0.102332, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.32713, 0, 1, 0, -0.111252, 0, 0, 1, -0.0984168, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.323214, 0, 1, 0, -0.099506, 0, 0, 1, -0.0945016, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.326707, 0, 1, 0, -0.138658, 0, 0, 1, -0.106247, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.326707, 0, 1, 0, -0.122997, 0, 0, 1, -0.0984168, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.330622, 0, 1, 0, -0.111252, 0, 0, 1, -0.0945016, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.326707, 0, 1, 0, -0.099506, 0, 0, 1, -0.0945016, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0608967, 0, 1, 0, 0.295928, 0, 0, 1, -0.0279433, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0643895, 0, 1, 0, 0.295928, 0, 0, 1, -0.0279433, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0017464, 0, 1, 0, -0.166064, 0, 0, 1, -0.0279433, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.303638, 0, 1, 0, -0.146488, 0, 0, 1, -0.0905864, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.338875, 0, 1, 0, -0.138658, 0, 0, 1, -0.106247, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.34279, 0, 1, 0, -0.122997, 0, 0, 1, -0.102332, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.34279, 0, 1, 0, -0.111252, 0, 0, 1, -0.0984168, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.338875, 0, 1, 0, -0.099506, 0, 0, 1, -0.0945016, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.342368, 0, 1, 0, -0.138658, 0, 0, 1, -0.106247, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346283, 0, 1, 0, -0.122997, 0, 0, 1, -0.102332, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.346283, 0, 1, 0, -0.111252, 0, 0, 1, -0.0984168, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.342368, 0, 1, 0, -0.099506, 0, 0, 1, -0.0945016, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.068727, 0, 1, 0, 0.460366, 0, 0, 1, -0.0396889, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0722198, 0, 1, 0, 0.460366, 0, 0, 1, -0.0357737, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.307131, 0, 1, 0, -0.146488, 0, 0, 1, -0.0905864, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0017464, 0, 1, 0, -0.228707, 0, 0, 1, -0.0279433, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.307554, 0, 1, 0, -0.162149, 0, 0, 1, -0.0945016, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354536, 0, 1, 0, -0.138658, 0, 0, 1, -0.110162, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358451, 0, 1, 0, -0.122997, 0, 0, 1, -0.106247, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358451, 0, 1, 0, -0.111252, 0, 0, 1, -0.0984168, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.350621, 0, 1, 0, -0.099506, 0, 0, 1, -0.0945016, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358029, 0, 1, 0, -0.138658, 0, 0, 1, -0.110162, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.361944, 0, 1, 0, -0.122997, 0, 0, 1, -0.106247, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.361944, 0, 1, 0, -0.111252, 0, 0, 1, -0.0984168, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.354114, 0, 1, 0, -0.099506, 0, 0, 1, -0.0945016, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0804726, 0, 1, 0, 0.491688, 0, 0, 1, 0.0425301, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0839654, 0, 1, 0, 0.491688, 0, 0, 1, 0.0425301, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.311046, 0, 1, 0, -0.162149, 0, 0, 1, -0.0945016, 0, 0, 0, 1)
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
                id: staff_27_trim
                objectName: "staff_27_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.0017464, -0.0884232, 0.00836737)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0508975, 0.00391519)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0587279, 0.00391519)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0704734, 0.00783038)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.0743886, 0.00391519)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0626431, 0)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0352367, 0.0626431, 0.00783038)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0743886, -0.0234911, 0.00783038)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0743886, -0.00391519, 0.0156608)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.101795, -0.0039152, 0.0274063)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0117456, 0.0117456, 0.00391519)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.00783038, 0.0117456, 0.00391519)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00391519, 0.0156608, 0.00391519)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0391519, 0.0156608, 0.0234911)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0156608, 0, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0156608, 0, 0.00391519)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0391519, 0, 0.019576)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.019576, 0, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0156608, 0, 0.00391519)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0430671, -0.0117456, 0.0156608)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0156608, 0, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0156608, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0391519, -0.0234911, 0.0117456)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0156608, 0, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0117456, 0, 0)
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
                                    position: Qt.vector3d(0.0352367, 0.0626431, 0.00391519)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0743886, -0.0234911, 0.00783038)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0743886, -0.00391519, 0.019576)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.101795, -0.0039152, 0.0274063)
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0391519, 0.0156608, 0.0234911)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0156608, 0, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0156608, 0, 0.00391519)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0391519, 0, 0.0156608)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.019576, 0, 0.00391519)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0156608, 0, 0.00391519)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0430671, -0.0117456, 0.0117456)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0156608, 0, 0.00391519)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0156608, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0391519, -0.0234911, 0.0117456)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0156608, 0, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0117456, 0, 0)
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
                        position: Qt.vector3d(-0.0508975, -0.0274063, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0117456, -0.180099, 0.019576)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.00783039, -0.164438, 0.0117456)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0117456, -0.0313215, -0.082219)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0508975, -0.0274063, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0117456, -0.180099, 0.019576)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.00783038, -0.164438, 0.00783038)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0117456, -0.0313215, -0.0783038)
                                }
                            }
                        }
                    }
                }
            }
        }
        Node {
            id: joint_29
            objectName: "joint_29"
            position: Qt.vector3d(0.299301, 0.134743, 0.0866712)
            Node {
                id: joint_30
                objectName: "joint_30"
                position: Qt.vector3d(0.00783038, 0.0117456, 0.00391519)
                Node {
                    id: joint_31
                    objectName: "joint_31"
                    position: Qt.vector3d(0.00391519, 0.0156608, 0.00391519)
                }
            }
        }
        Model {
            id: typing_mesh
            objectName: "Typing_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1794647984097_mesh_mat_material
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
            target: joint_12
            property: "rotation"
            keyframeSource: "animations/joint_12_rotation_0.qad"
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
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.976459, 0.206971, 0.0343164, -0.0501397)
            }
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.713815, 0.345036, 0.473097, -0.384184)
            }
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.943182, 0.312557, -0.0147264, 0.111798)
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
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.713815, 0.345036, 0.473097, -0.384184)
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
            target: joint_19
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.713815, 0.345036, 0.473097, -0.384184)
            }
        }
        KeyframeGroup {
            target: rightShoulder
            property: "rotation"
            keyframeSource: "animations/rightShoulder_rotation_0.qad"
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
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.713815, 0.345036, 0.473097, -0.384184)
            }
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
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0369898, 0.0211558, 0.159182)
            }
        }
        KeyframeGroup {
            target: joint_21
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.984652, -0.0120375, -0.0124664, 0.173667)
            }
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
                value: Qt.quaternion(0.97832, 0.0572755, -0.0229309, 0.197696)
            }
        }
        KeyframeGroup {
            target: joint_12
            property: "rotation"
            keyframeSource: "animations/joint_12_rotation_1.qad"
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.973157, 0.0224277, -0.140166, 0.181154)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            keyframeSource: "animations/joint_14_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.976502, 0.200596, 0.0476707, 0.062717)
            }
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.783224, 0.418215, 0.399405, -0.228324)
            }
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            keyframeSource: "animations/joint_10_rotation_1.qad"
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
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.738, 0.397718, 0.470436, -0.275439)
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
            target: joint_19
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.762234, 0.390723, 0.432407, -0.281707)
            }
        }
        KeyframeGroup {
            target: rightShoulder
            property: "rotation"
            keyframeSource: "animations/rightShoulder_rotation_1.qad"
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
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.79492, 0.383557, 0.38875, -0.264312)
            }
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
            target: joint_24
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.986329, 0.0369898, 0.0211557, 0.159182)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.97832, 0.0572754, -0.0229309, 0.197696)
            }
        }
        KeyframeGroup {
            target: joint_12
            property: "rotation"
            keyframeSource: "animations/joint_12_rotation_2.qad"
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.973157, 0.0224277, -0.140166, 0.181154)
            }
        }
        KeyframeGroup {
            target: joint_14
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.983443, 0.0149586, -0.134718, 0.120278)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.976502, 0.200596, 0.0476707, 0.0627171)
            }
        }
        KeyframeGroup {
            target: rightLeg
            property: "rotation"
            keyframeSource: "animations/rightLeg_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.783224, 0.418214, 0.399405, -0.228324)
            }
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.905204, 0.396506, -0.0242528, 0.150995)
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
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.738, 0.397718, 0.470436, -0.275439)
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
            target: joint_19
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.762234, 0.390723, 0.432407, -0.281707)
            }
        }
        KeyframeGroup {
            target: rightShoulder
            property: "rotation"
            keyframeSource: "animations/rightShoulder_rotation_2.qad"
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
            target: joint_22
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.79492, 0.383557, 0.38875, -0.264312)
            }
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
