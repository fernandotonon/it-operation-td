# The simulation rules are checked without Qt: node tests/sim.test.js (registered as a ctest when node exists).
find_program(NODE_EXECUTABLE NAMES node)
if(NODE_EXECUTABLE)
    add_test(NAME node_sim_rules COMMAND "${NODE_EXECUTABLE}" "${CMAKE_CURRENT_SOURCE_DIR}/sim.test.js")
endif()
