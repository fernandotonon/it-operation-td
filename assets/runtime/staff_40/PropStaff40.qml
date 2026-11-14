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
        id: qtmesh_gen3d_1_1794642137786_diffuse_png_texture
        objectName: "qtmesh_gen3d_1_1794642137786_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794642137786_diffuse.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794642137786_roughness_png_texture
        objectName: "qtmesh_gen3d_1_1794642137786_roughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794642137786_roughness.png"
    }
    Texture {
        id: qtmesh_gen3d_1_1794642137786_normal_png_texture
        objectName: "qtmesh_gen3d_1_1794642137786_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/qtmesh_gen3d_1_1794642137786_normal.png"
    }
    PrincipledMaterial {
        id: qtmesh_gen3d_1_1794642137786_mesh_mat_material
        objectName: "qtmesh_gen3d_1_1794642137786_mesh_mat"
        baseColorMap: qtmesh_gen3d_1_1794642137786_diffuse_png_texture
        metalnessMap: qtmesh_gen3d_1_1794642137786_roughness_png_texture
        roughnessMap: qtmesh_gen3d_1_1794642137786_roughness_png_texture
        roughness: 1
        normalMap: qtmesh_gen3d_1_1794642137786_normal_png_texture
        alphaMode: PrincipledMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            staff_40_trim,
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
            Qt.matrix4x4(1, 0, 0, -0.00192677, 0, 1, 0, 0.0849574, 0, 0, 1, -0.00881289, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00192677, 0, 1, 0, 0.0346002, 0, 0, 1, -0.0126865, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00192677, 0, 1, 0, -0.0235043, 0, 0, 1, -0.0165602, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00192677, 0, 1, 0, -0.0932296, 0, 0, 1, -0.0243074, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0329359, 0, 1, 0, -0.155208, 0, 0, 1, -0.028181, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.102661, 0, 1, 0, -0.13584, 0, 0, 1, -0.0320547, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.187881, 0, 1, 0, -0.124219, 0, 0, 1, -0.0436756, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.30409, 0, 1, 0, -0.124219, 0, 0, 1, -0.0475492, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0367895, 0, 1, 0, -0.155208, 0, 0, 1, -0.028181, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.106515, 0, 1, 0, -0.13584, 0, 0, 1, -0.0320547, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.191735, 0, 1, 0, -0.124219, 0, 0, 1, -0.0436756, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.307944, 0, 1, 0, -0.124219, 0, 0, 1, -0.0475492, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0445568, 0, 1, 0, 0.112073, 0, 0, 1, -0.00881289, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0484104, 0, 1, 0, 0.112073, 0, 0, 1, -0.00881289, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.315711, 0, 1, 0, -0.131966, 0, 0, 1, -0.0436756, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342826, 0, 1, 0, -0.139713, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.3467, 0, 1, 0, -0.124219, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.3467, 0, 1, 0, -0.112598, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.342826, 0, 1, 0, -0.100977, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.319565, 0, 1, 0, -0.131966, 0, 0, 1, -0.0436756, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350554, 0, 1, 0, -0.139713, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350554, 0, 1, 0, -0.124219, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.350554, 0, 1, 0, -0.112598, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.34668, 0, 1, 0, -0.100977, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.063925, 0, 1, 0, 0.29026, 0, 0, 1, -0.028181, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0677785, 0, 1, 0, 0.29026, 0, 0, 1, -0.028181, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00192677, 0, 1, 0, -0.166829, 0, 0, 1, -0.028181, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.327332, 0, 1, 0, -0.143587, 0, 0, 1, -0.0436756, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362195, 0, 1, 0, -0.143587, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.366068, 0, 1, 0, -0.128092, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.362195, 0, 1, 0, -0.112598, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.358321, 0, 1, 0, -0.100977, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.331185, 0, 1, 0, -0.143587, 0, 0, 1, -0.0436756, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366048, 0, 1, 0, -0.143587, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.369922, 0, 1, 0, -0.128092, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.366048, 0, 1, 0, -0.112598, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.362175, 0, 1, 0, -0.100977, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0755459, 0, 1, 0, 0.449079, 0, 0, 1, -0.0320547, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.0793994, 0, 1, 0, 0.449079, 0, 0, 1, -0.028181, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.00192677, 0, 1, 0, -0.244301, 0, 0, 1, -0.028181, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.331206, 0, 1, 0, -0.166829, 0, 0, 1, -0.0475492, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.377689, 0, 1, 0, -0.14746, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.381563, 0, 1, 0, -0.128092, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.377689, 0, 1, 0, -0.112598, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.373816, 0, 1, 0, -0.100977, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.335059, 0, 1, 0, -0.166829, 0, 0, 1, -0.0475492, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381543, 0, 1, 0, -0.14746, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.385416, 0, 1, 0, -0.128092, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.381543, 0, 1, 0, -0.112598, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.377669, 0, 1, 0, -0.100977, 0, 0, 1, -0.0552965, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0.0987877, 0, 1, 0, 0.487815, 0, 0, 1, 0.0570389, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, -0.102641, 0, 1, 0, 0.487815, 0, 0, 1, 0.0570389, 0, 0, 0, 1)
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
                id: staff_40_trim
                objectName: "staff_40_trim"
                Node {
                    id: hips
                    objectName: "Hips"
                    position: Qt.vector3d(0.00192677, -0.0849574, 0.00881289)
                    Node {
                        id: spine
                        objectName: "Spine"
                        position: Qt.vector3d(0, 0.0503572, 0.00387363)
                        Node {
                            id: spine1
                            objectName: "Spine1"
                            position: Qt.vector3d(0, 0.0581045, 0.00387363)
                            Node {
                                id: spine2
                                objectName: "Spine2"
                                position: Qt.vector3d(0, 0.0697254, 0.00774726)
                                Node {
                                    id: neck
                                    objectName: "Neck"
                                    position: Qt.vector3d(0, 0.073599, 0.00387363)
                                    Node {
                                        id: head
                                        objectName: "Head"
                                        position: Qt.vector3d(0, 0.0774726, 0)
                                    }
                                }
                                Node {
                                    id: leftShoulder
                                    objectName: "LeftShoulder"
                                    position: Qt.vector3d(-0.0348627, 0.0619781, 0.00387363)
                                    Node {
                                        id: leftArm
                                        objectName: "LeftArm"
                                        position: Qt.vector3d(-0.0697254, -0.0193682, 0.00387363)
                                        Node {
                                            id: leftForeArm
                                            objectName: "LeftForeArm"
                                            position: Qt.vector3d(-0.0852199, -0.0116209, 0.0116209)
                                            Node {
                                                id: leftHand
                                                objectName: "LeftHand"
                                                position: Qt.vector3d(-0.116209, 0, 0.00387363)
                                                Node {
                                                    id: joint_10
                                                    objectName: "joint_10"
                                                    position: Qt.vector3d(-0.0116209, 0.00774727, -0.00387363)
                                                    Node {
                                                        id: joint_11
                                                        objectName: "joint_11"
                                                        position: Qt.vector3d(-0.0116209, 0.0116209, 0)
                                                        Node {
                                                            id: joint_12
                                                            objectName: "joint_12"
                                                            position: Qt.vector3d(-0.00387365, 0.0232418, 0.00387363)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_13
                                                    objectName: "joint_13"
                                                    position: Qt.vector3d(-0.0387363, 0.0154945, 0.00774726)
                                                    Node {
                                                        id: joint_14
                                                        objectName: "joint_14"
                                                        position: Qt.vector3d(-0.0193682, 0.00387363, 0)
                                                        Node {
                                                            id: joint_15
                                                            objectName: "joint_15"
                                                            position: Qt.vector3d(-0.0154945, 0.00387363, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_16
                                                    objectName: "joint_16"
                                                    position: Qt.vector3d(-0.04261, 0, 0.00774726)
                                                    Node {
                                                        id: joint_17
                                                        objectName: "joint_17"
                                                        position: Qt.vector3d(-0.0193682, 0.00387364, 0)
                                                        Node {
                                                            id: joint_18
                                                            objectName: "joint_18"
                                                            position: Qt.vector3d(-0.0154945, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_19
                                                    objectName: "joint_19"
                                                    position: Qt.vector3d(-0.04261, -0.0116209, 0.00774726)
                                                    Node {
                                                        id: joint_20
                                                        objectName: "joint_20"
                                                        position: Qt.vector3d(-0.0154945, 0, 0)
                                                        Node {
                                                            id: joint_21
                                                            objectName: "joint_21"
                                                            position: Qt.vector3d(-0.0154945, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_22
                                                    objectName: "joint_22"
                                                    position: Qt.vector3d(-0.0387363, -0.0232418, 0.00774726)
                                                    Node {
                                                        id: joint_23
                                                        objectName: "joint_23"
                                                        position: Qt.vector3d(-0.0154946, 0, 0)
                                                        Node {
                                                            id: joint_24
                                                            objectName: "joint_24"
                                                            position: Qt.vector3d(-0.0154945, 0, 0)
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
                                    position: Qt.vector3d(0.0348627, 0.0619781, 0.00387363)
                                    Node {
                                        id: rightArm
                                        objectName: "RightArm"
                                        position: Qt.vector3d(0.0697254, -0.0193682, 0.00387363)
                                        Node {
                                            id: rightForeArm
                                            objectName: "RightForeArm"
                                            position: Qt.vector3d(0.0852199, -0.0116209, 0.0116209)
                                            Node {
                                                id: rightHand
                                                objectName: "RightHand"
                                                position: Qt.vector3d(0.116209, 0, 0.00387363)
                                                Node {
                                                    id: joint_29
                                                    objectName: "joint_29"
                                                    position: Qt.vector3d(0.0116209, 0.00774727, -0.00387363)
                                                    Node {
                                                        id: joint_30
                                                        objectName: "joint_30"
                                                        position: Qt.vector3d(0.0116209, 0.0116209, 0)
                                                        Node {
                                                            id: joint_31
                                                            objectName: "joint_31"
                                                            position: Qt.vector3d(0.00387362, 0.0232418, 0.00387363)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_32
                                                    objectName: "joint_32"
                                                    position: Qt.vector3d(0.04261, 0.0154945, 0.00774726)
                                                    Node {
                                                        id: joint_33
                                                        objectName: "joint_33"
                                                        position: Qt.vector3d(0.0154945, 0.00387363, 0)
                                                        Node {
                                                            id: joint_34
                                                            objectName: "joint_34"
                                                            position: Qt.vector3d(0.0154945, 0.00387363, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_35
                                                    objectName: "joint_35"
                                                    position: Qt.vector3d(0.04261, 0, 0.00774726)
                                                    Node {
                                                        id: joint_36
                                                        objectName: "joint_36"
                                                        position: Qt.vector3d(0.0193681, 0.00387364, 0)
                                                        Node {
                                                            id: joint_37
                                                            objectName: "joint_37"
                                                            position: Qt.vector3d(0.0154945, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_38
                                                    objectName: "joint_38"
                                                    position: Qt.vector3d(0.04261, -0.0116209, 0.00774726)
                                                    Node {
                                                        id: joint_39
                                                        objectName: "joint_39"
                                                        position: Qt.vector3d(0.0154945, 0, 0)
                                                        Node {
                                                            id: joint_40
                                                            objectName: "joint_40"
                                                            position: Qt.vector3d(0.0154945, 0, 0)
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: joint_41
                                                    objectName: "joint_41"
                                                    position: Qt.vector3d(0.0387363, -0.0232418, 0.00774726)
                                                    Node {
                                                        id: joint_42
                                                        objectName: "joint_42"
                                                        position: Qt.vector3d(0.0154945, 0, 0)
                                                        Node {
                                                            id: joint_43
                                                            objectName: "joint_43"
                                                            position: Qt.vector3d(0.0154945, 0, 0)
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
                        position: Qt.vector3d(-0.0464836, -0.0271154, 0)
                        Node {
                            id: leftLeg
                            objectName: "LeftLeg"
                            position: Qt.vector3d(-0.0193682, -0.178187, 0.0193682)
                            Node {
                                id: leftFoot
                                objectName: "LeftFoot"
                                position: Qt.vector3d(-0.0116209, -0.158819, 0.00387363)
                                Node {
                                    id: joint_47
                                    objectName: "joint_47"
                                    position: Qt.vector3d(-0.0232418, -0.0387363, -0.0890935)
                                }
                            }
                        }
                    }
                    Node {
                        id: rightUpLeg
                        objectName: "RightUpLeg"
                        position: Qt.vector3d(0.0464836, -0.0271154, 0)
                        Node {
                            id: rightLeg
                            objectName: "RightLeg"
                            position: Qt.vector3d(0.0193682, -0.178187, 0.0193682)
                            Node {
                                id: rightFoot
                                objectName: "RightFoot"
                                position: Qt.vector3d(0.0116209, -0.158819, 0)
                                Node {
                                    id: joint_51
                                    objectName: "joint_51"
                                    position: Qt.vector3d(0.0232418, -0.0387363, -0.0852199)
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
                qtmesh_gen3d_1_1794642137786_mesh_mat_material
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
                value: Qt.quaternion(0.975093, 0.178051, 0.0667194, -0.114197)
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
                value: Qt.quaternion(0.872088, 0.282181, -0.281153, 0.284236)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.872088, 0.282181, -0.281153, 0.284236)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.895353, 0.308355, -0.252911, 0.198233)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.899813, 0.314295, -0.245499, 0.17688)
            }
        }
        KeyframeGroup {
            target: joint_16
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.894712, 0.310975, 0.253805, -0.195876)
            }
        }
        KeyframeGroup {
            target: joint_13
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.894712, 0.310975, 0.253806, -0.195877)
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
            keyframeSource: "animations/joint_10_rotation_0.qad"
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.974915, 0.178672, -0.0672244, 0.114443)
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
                value: Qt.quaternion(0.870432, 0.2842, 0.284129, -0.284342)
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
                value: Qt.quaternion(0.870432, 0.2842, 0.284129, -0.284342)
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
                value: Qt.quaternion(0.985907, 0.0374779, -0.0225623, -0.161475)
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
                value: Qt.quaternion(0.993669, 0.0265671, -0.0179305, -0.107682)
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
                value: Qt.quaternion(0.986329, 0.0369899, 0.0216165, 0.15912)
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
                value: Qt.quaternion(0.95371, 0.160046, 0.0509148, -0.249459)
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
                value: Qt.quaternion(0.938026, 0.299233, -0.101909, 0.14206)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.92228, 0.305005, -0.194908, 0.135583)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.921412, 0.322306, -0.20614, 0.0680032)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.899303, 0.32939, -0.26888, 0.102268)
            }
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
                value: Qt.quaternion(0.901432, 0.33614, 0.26211, -0.0756882)
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
            keyframeSource: "animations/joint_10_rotation_1.qad"
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.962062, 0.152399, -0.0440384, 0.221973)
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
                value: Qt.quaternion(0.903876, 0.30367, 0.251538, -0.165897)
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
                value: Qt.quaternion(0.923219, 0.29314, 0.203813, -0.142115)
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
                value: Qt.quaternion(0.985907, 0.037478, -0.0225623, -0.161475)
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
                value: Qt.quaternion(0.993669, 0.0265672, -0.0179305, -0.107682)
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
                value: Qt.quaternion(0.986329, 0.0369898, 0.0216164, 0.159121)
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
                value: Qt.quaternion(0.95371, 0.160046, 0.0509147, -0.24946)
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
                value: Qt.quaternion(0.938026, 0.299233, -0.101909, 0.14206)
            }
        }
        KeyframeGroup {
            target: joint_38
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.92228, 0.305005, -0.194908, 0.135583)
            }
        }
        KeyframeGroup {
            target: joint_35
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.921412, 0.322306, -0.20614, 0.0680033)
            }
        }
        KeyframeGroup {
            target: joint_32
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.899303, 0.329391, -0.268881, 0.102268)
            }
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
                value: Qt.quaternion(0.901432, 0.33614, 0.26211, -0.0756881)
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
            keyframeSource: "animations/joint_10_rotation_2.qad"
        }
        KeyframeGroup {
            target: joint_11
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.962062, 0.152399, -0.0440385, 0.221973)
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
                value: Qt.quaternion(0.944393, 0.239199, 0.0149977, -0.225123)
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
                value: Qt.quaternion(0.903876, 0.30367, 0.251538, -0.165897)
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
                value: Qt.quaternion(0.923219, 0.29314, 0.203813, -0.142115)
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
