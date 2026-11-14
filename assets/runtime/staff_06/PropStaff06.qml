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
        id: qtmesh_gen3d_1_1794633681940_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794633681940_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794633681940_diffuse.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794633681940_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794633681940_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794633681940_roughness.jpg"
    }
    Texture {
        id: qtmesh_gen3d_1_1794633681940_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794633681940_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794633681940_normal.jpg"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794633681940_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794633681940_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794633681940_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794633681940_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794633681940_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794633681940_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_06_trim,
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
            Qt.matrix4x4(1, 0, 0, -0.00174136, 0, 1, 0, 0.0488519, 0, 0, 1, -0.00784352, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00174136, 0, 1, 0, 0.00183963, 0, 0, 1, -0.0117612, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00174136, 0, 1, 0, -0.0569256, 0, 0, 1, -0.0195966, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00174136, 0, 1, 0, -0.123526, 0, 0, 1, -0.0313496, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0374355, 0, 1, 0, -0.182292, 0, 0, 1, -0.0431027, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.115789, 0, 1, 0, -0.158785, 0, 0, 1, -0.0509381, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.198061, 0, 1, 0, -0.147032, 0, 0, 1, -0.0626911, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.311673, 0, 1, 0, -0.154868, 0, 0, 1, -0.0822795, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0409182, 0, 1, 0, -0.182292, 0, 0, 1, -0.039185, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.119272, 0, 1, 0, -0.158785, 0, 0, 1, -0.0470204, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.201543, 0, 1, 0, -0.147032, 0, 0, 1, -0.0626911, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.315156, 0, 1, 0, -0.154868, 0, 0, 1, -0.0822795, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0491885, 0, 1, 0, 0.0801933, 0, 0, 1, -0.00784352, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0526713, 0, 1, 0, 0.0801933, 0, 0, 1, -0.0117612, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.319509, 0, 1, 0, -0.170538, 0, 0, 1, -0.0822795, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.35085, 0, 1, 0, -0.186209, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.354768, 0, 1, 0, -0.170538, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362603, 0, 1, 0, -0.158785, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358686, 0, 1, 0, -0.143115, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.354333, 0, 1, 0, -0.186209, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.358251, 0, 1, 0, -0.170538, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366086, 0, 1, 0, -0.158785, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366086, 0, 1, 0, -0.143115, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0648593, 0, 1, 0, 0.276078, 0, 0, 1, -0.0274319, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.068342, 0, 1, 0, 0.276078, 0, 0, 1, -0.0274319, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00174136, 0, 1, 0, -0.197962, 0, 0, 1, -0.039185, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327344, 0, 1, 0, -0.186209, 0, 0, 1, -0.0822795, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362603, 0, 1, 0, -0.197962, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.374356, 0, 1, 0, -0.178374, 0, 0, 1, -0.105786, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.378274, 0, 1, 0, -0.162703, 0, 0, 1, -0.105786, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.378274, 0, 1, 0, -0.139197, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366086, 0, 1, 0, -0.197962, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.377839, 0, 1, 0, -0.178374, 0, 0, 1, -0.105786, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381757, 0, 1, 0, -0.162703, 0, 0, 1, -0.105786, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381757, 0, 1, 0, -0.139197, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0766123, 0, 1, 0, 0.448456, 0, 0, 1, -0.0352673, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0800951, 0, 1, 0, 0.448456, 0, 0, 1, -0.0313496, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.330827, 0, 1, 0, -0.186209, 0, 0, 1, -0.0822795, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00174136, 0, 1, 0, -0.256728, 0, 0, 1, -0.0313496, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.331262, 0, 1, 0, -0.205798, 0, 0, 1, -0.0822795, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.374356, 0, 1, 0, -0.209715, 0, 0, 1, -0.105786, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.390027, 0, 1, 0, -0.186209, 0, 0, 1, -0.109703, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.393945, 0, 1, 0, -0.166621, 0, 0, 1, -0.109703, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.390027, 0, 1, 0, -0.139197, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.377839, 0, 1, 0, -0.209715, 0, 0, 1, -0.105786, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.39351, 0, 1, 0, -0.186209, 0, 0, 1, -0.109703, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.397428, 0, 1, 0, -0.166621, 0, 0, 1, -0.109703, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.39351, 0, 1, 0, -0.139197, 0, 0, 1, -0.101868, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0883654, 0, 1, 0, 0.495468, 0, 0, 1, 0.0509217, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0918481, 0, 1, 0, 0.495468, 0, 0, 1, 0.0509218, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.334745, 0, 1, 0, -0.205798, 0, 0, 1, -0.0822795, 0, 0, 0, 1)
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
                id: staff_06_trim
                objectName: "staff_06_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00174136, -0.0488519, 0.00784352)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0470122, 0.00391768)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0587653, 0.00783537)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0666006, 0.0117531)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.074436, 0.00783537)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0587653, -0.00783537)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0391768, 0.0587653, 0.0117531)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0783537, -0.0235061, 0.00783537)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0822714, -0.0117531, 0.0117531)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.113613, 0.00783536, 0.0195884)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.00783536, 0.0156707, 0)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.00783536, 0.0156707, 0)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00391769, 0.0195884, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0391769, 0.0313415, 0.0195884)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0117531, 0.0117531, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0117531, 0.0117531, 0.00391769)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.0430945, 0.0156707, 0.0195884)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0195884, 0.00783537, 0.00391769)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0156707, 0.00783536, 0.00391769)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.0509299, 0.00391769, 0.0195884)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0156707, 0.00391768, 0.00391769)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0156707, 0.00391768, 0.00391769)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0470122, -0.0117531, 0.0195884)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0195884, -0.00391768, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0117531, 0, 0)
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
                                    position: Qt.vector3d(0.0391768, 0.0587653, 0.00783537)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0783537, -0.0235061, 0.00783537)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0822714, -0.0117531, 0.0156707)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.113613, 0.00783536, 0.0195884)
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.0391769, 0.0313415, 0.0195884)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0117531, 0.0117531, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0117531, 0.0117531, 0.00391769)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.0430945, 0.0156707, 0.0195884)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0195884, 0.00783537, 0.00391769)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0156707, 0.00783536, 0.00391769)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.0509299, 0.00391769, 0.0195884)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0156707, 0.00391768, 0.00391769)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0156707, 0.00391768, 0.00391769)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0509299, -0.0117531, 0.0195884)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0156707, -0.00391768, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0117531, 0, 0)
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
                        position: Qt.vector3d(-0.0509299, -0.0313415, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0156707, -0.195884, 0.0195884)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0117531, -0.172378, 0.00783537)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0117531, -0.0470122, -0.0861891)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0509299, -0.0313415, 0.00391768)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0156707, -0.195884, 0.0156707)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0117531, -0.172378, 0.00391769)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0117531, -0.0470122, -0.0822714)
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
            position: Qt.vector3d(0.322992, 0.170539, 0.0822795)
            Node {
                id: joint_30
                objectName: "joint_30"
                position: Qt.vector3d(0.00783536, 0.0156707, 7.45058e-09)
                Node {
                    id: joint_31
                    objectName: "joint_31"
                    position: Qt.vector3d(0.00391769, 0.0195884, 0)
                }
            }
        }
        Model {
            id: typing_mesh
            objectName: "Typing_mesh"
            source: "meshes/meshes_0__mesh.mesh"
            skin: skin
            materials: [
                qtmesh_gen3d_1_1794633681940_mesh_mat_material
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
                value: Qt.quaternion(0.963039, 0.263841, -0.0528711, -0.0121867)
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
                value: Qt.quaternion(0.822649, 0.558851, 0.0361682, -0.0981068)
            }
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.935228, 0.297812, -0.119272, 0.149769)
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
                value: Qt.quaternion(0.803213, 0.502391, 0.0784551, -0.310317)
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
                value: Qt.quaternion(0.787147, 0.479974, 0.0947836, -0.375554)
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
                value: Qt.quaternion(0.673684, 0.483302, 0.292215, -0.476634)
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
                value: Qt.quaternion(0.986329, 0.0372327, 0.0186382, 0.15944)
            }
        }
        KeyframeGroup {
            target: joint_21
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.984652, 0.0259246, -0.0175706, 0.171697)
            }
        }
        KeyframeGroup {
            target: joint_18
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.97832, 0.0391812, -0.0388929, 0.199605)
            }
        }
        KeyframeGroup {
            target: joint_15
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.982309, 0.0617135, -0.035101, 0.17329)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.955732, 0.0516855, -0.0478495, 0.285684)
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
                value: Qt.quaternion(0.973655, -0.0437876, -0.140002, 0.174578)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.970215, 0.223881, -0.0225561, 0.0897363)
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
            keyframeSource: "animations/joint_13_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.89807, 0.350747, -0.144772, 0.222459)
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
            target: joint_16
            property: "rotation"
            keyframeSource: "animations/joint_16_rotation_1.qad"
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
                value: Qt.quaternion(0.822073, 0.498563, 0.0265628, -0.273724)
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
                value: Qt.quaternion(0.763324, 0.490497, 0.183822, -0.378098)
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
                value: Qt.quaternion(0.986329, 0.0372327, 0.0186382, 0.15944)
            }
        }
        KeyframeGroup {
            target: joint_21
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.984652, 0.0259246, -0.0175706, 0.171697)
            }
        }
        KeyframeGroup {
            target: joint_18
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.97832, 0.0391812, -0.0388929, 0.199605)
            }
        }
        KeyframeGroup {
            target: joint_15
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.982309, 0.0617135, -0.035101, 0.17329)
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
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.955732, 0.0516854, -0.0478495, 0.285684)
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
                value: Qt.quaternion(0.973655, -0.0437877, -0.140002, 0.174578)
            }
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.970214, 0.223881, -0.0225561, 0.0897363)
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
            keyframeSource: "animations/joint_13_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_10
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.89807, 0.350747, -0.144772, 0.222459)
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
                value: Qt.quaternion(0.840279, 0.519632, -0.0345041, -0.150741)
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
                value: Qt.quaternion(0.822073, 0.498563, 0.0265628, -0.273723)
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
                value: Qt.quaternion(0.763324, 0.490497, 0.183822, -0.378098)
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
