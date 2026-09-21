// The app module's C++ bridges, instantiated only where they exist (the built app on WebAssembly).
// Kept in a separate file so SaveSystem / AudioManager can load it through a Loader and fall back
// cleanly in the dojo and clayrender, where the C++ types are not registered.
import QtQuick

Item {
    property alias store: saveStore
    property alias web: webAudio
    SaveStore { id: saveStore }
    WebAudio { id: webAudio }
}
