# Operação TI: Defenda o Datacenter - an IT-themed tower defense built with Clayground,
# with assets made in QtMeshEditor. MIT License, see LICENSE.
cmake_minimum_required(VERSION 3.21)

project(OperacaoTI
        VERSION 0.1.0
        DESCRIPTION "Operação TI: Defenda o Datacenter - tower defense built with Clayground"
        HOMEPAGE_URL "https://github.com/fernandotonon/it-operation-td"
        LANGUAGES CXX)

# Clayground has no install/export step: it is vendored as a git submodule and built in-tree.
if(NOT EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/external/clayground/CMakeLists.txt")
    message(FATAL_ERROR
        "Clayground submodule missing. Run: git submodule update --init --recursive")
endif()

# Only the plugins are needed; Clayground's own tools/examples would double the build time.
option(OPTI_WITH_CLAY_TOOLS "Build Clayground tools (claydojo, clayrender)" OFF)
set(CLAYGROUND_WITH_TOOLS ${OPTI_WITH_CLAY_TOOLS} CACHE BOOL "" FORCE)
set(CLAYGROUND_WITH_EXAMPLES OFF CACHE BOOL "" FORCE)

enable_testing()
add_subdirectory(external/clayground)

# clay_app()/clay_add_qml_test() live in Clayground's cmake/ dir, which clayinit.cmake appends
# to CMAKE_MODULE_PATH in Clayground's own directory scope only - repeat it here.
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/external/clayground/cmake")
# clayinit.cmake also sets the output directories in its scope only; clay_app() copies bin/qml
# into the macOS bundle after linking and relies on them, so mirror them.
if(NOT (ANDROID OR IOS OR EMSCRIPTEN))
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
elseif(EMSCRIPTEN)
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)   # scripts/build-wasm.sh collects bin/*.js|wasm
endif()
add_subdirectory(app)

if(BUILD_TESTING)
    add_subdirectory(tests)
endif()
