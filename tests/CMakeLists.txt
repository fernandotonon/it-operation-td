# The simulation rules are checked without Qt: node tests/sim.test.js (registered as a ctest when node exists).
find_program(NODE_EXECUTABLE NAMES node)
if(NODE_EXECUTABLE)
    add_test(NAME node_stage_geometry COMMAND "${NODE_EXECUTABLE}" "${CMAKE_CURRENT_SOURCE_DIR}/stages.test.js")
    add_test(NAME node_localization COMMAND "${NODE_EXECUTABLE}" "${CMAKE_CURRENT_SOURCE_DIR}/lang.test.js")
    add_test(NAME node_campaign_balance COMMAND "${NODE_EXECUTABLE}" "${CMAKE_CURRENT_SOURCE_DIR}/stage-balance.mjs")
    add_test(NAME node_sim_rules COMMAND "${NODE_EXECUTABLE}" "${CMAKE_CURRENT_SOURCE_DIR}/sim.test.js")
endif()

# Check the actual shipped character rigs and texture references, not just the import scripts.
find_package(Python3 COMPONENTS Interpreter QUIET)
if(Python3_Interpreter_FOUND)
    add_test(NAME character_asset_integrity COMMAND "${Python3_EXECUTABLE}"
        "${CMAKE_SOURCE_DIR}/scripts/validate-character.py"
        "${CMAKE_SOURCE_DIR}/assets/rigged/tech_headset/tech_headset_rigged.glb"
        "${CMAKE_SOURCE_DIR}/assets/rigged/tech_helmet/tech_helmet_rigged.glb"
        "${CMAKE_SOURCE_DIR}/assets/rigged/tech_polo/tech_polo_rigged.glb"
        "${CMAKE_SOURCE_DIR}/assets/rigged/staff_02/staff_02_rigged.glb"
        "${CMAKE_SOURCE_DIR}/assets/rigged/staff_05/staff_05_rigged.glb")
endif()
