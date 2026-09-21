# Application target, declared through Clayground's clay_app() helper (entry point: Main.qml).
include(clayapp)

# Runtime assets (balsam output under assets/runtime, audio, HUD icons) live outside app/; each file gets
# an alias that keeps the "../assets/..." path Qt.resolvedUrl() expects from the app directory.
file(GLOB_RECURSE OPTI_RUNTIME_ASSETS CONFIGURE_DEPENDS "${CMAKE_SOURCE_DIR}/assets/runtime/*")
file(GLOB OPTI_AUDIO_ASSETS CONFIGURE_DEPENDS "${CMAKE_SOURCE_DIR}/assets/audio/*.wav")
set(OPTI_ICON_ASSETS "${CMAKE_SOURCE_DIR}/assets/source-images/coin.png" "${CMAKE_SOURCE_DIR}/assets/source-images/heart.png")
# WebAssembly: the 3D runtime assets are NOT embedded (scripts/build-wasm.sh ships them as files that Qt's
# loader preloads into the in-memory filesystem, /game/assets/...); audio and HUD icons stay embedded.
set(OPTI_RES_FILES ${OPTI_AUDIO_ASSETS} ${OPTI_ICON_ASSETS})
if(NOT EMSCRIPTEN)
    list(APPEND OPTI_RES_FILES ${OPTI_RUNTIME_ASSETS})
endif()
list(FILTER OPTI_RES_FILES EXCLUDE REGEX "\\.DS_Store$")
foreach(_f IN LISTS OPTI_RES_FILES)
    file(RELATIVE_PATH _rel "${CMAKE_SOURCE_DIR}" "${_f}")
    set_source_files_properties("${_f}" PROPERTIES QT_RESOURCE_ALIAS "${_rel}")
endforeach()

set_source_files_properties(Strings.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)

clay_app(operacao_ti
    VERSION 0.1.0

    SOURCES
        src/savestore.h src/savestore.cpp
        src/webaudio.h src/webaudio.cpp

    LINK_LIBS
        Qt::Core
        Qt::Qml
        Qt::Quick
        Qt::Quick3D
        Qt::Quick3DHelpers
        Qt::Quick3DAssetUtils
        Qt::QuickTimeline
        Qt::Multimedia

    QML_FILES
        Main.qml
        Sandbox.qml
        CharacterPreview.qml
        AppBridges.qml
        Strings.qml
        TdGame.qml
        Board3D.qml
        PropVisual.qml
        EnemyVisual.qml
        TowerVisual.qml
        ProjectileVisual.qml
        FxBurst.qml
        Hud.qml
        BigButton.qml
        Panel.qml
        TowerCard.qml
        EnemyIcon.qml
        TutorialCard.qml
        TitleOverlay.qml
        PauseOverlay.qml
        EndOverlay.qml
        SettingsPanel.qml
        SaveSystem.qml
        AudioManager.qml
        scripts/Sim.js
        scripts/PlaceholderShapes.js
        config/map.js
        config/towers.js
        config/enemies.js
        config/waves.js
        config/tuning.js
        config/strings.js
        config/assets.js

    RES_FILES
        ${OPTI_RES_FILES}
)

# the generated QML type registration includes <savestore.h> / <webaudio.h> by bare name
target_include_directories(operacao_ti PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/src")

if(EMSCRIPTEN)
    # Qt Quick 3D plus the preloaded assets need more than Clayground's 64 MB default heap;
    # it still grows on demand (ALLOW_MEMORY_GROWTH).
    set_target_properties(operacao_ti PROPERTIES QT_WASM_INITIAL_MEMORY "256MB")
endif()
