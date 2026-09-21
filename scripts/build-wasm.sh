#!/usr/bin/env bash
# Operação TI - build the game for Qt WebAssembly and assemble a static-hosting directory (deploy/).
#
#   scripts/build-wasm.sh [--single] [--debug] [--dev-tools]
#
# Requirements:
#   * Qt 6.11.1 wasm kit:   QT_WASM_ROOT (default ~/Qt/6.11.1/wasm_multithread)
#   * Emscripten 4.0.7:     EMSDK (default ~/emsdk-qt6) - the exact version Qt 6.11 expects
#   * Host Qt for tools:    QT_HOST_ROOT (default ~/Qt/6.11.1/macos)
set -euo pipefail
cd "$(dirname "$0")/.."

FLAVOUR=multithread
BUILD_TYPE=Release
DEV_TOOLS=OFF
DEPLOY_ONLY=0
for a in "$@"; do
    case "$a" in
        --single) FLAVOUR=singlethread ;;
        --debug)  BUILD_TYPE=Debug ;;
        --dev-tools) DEV_TOOLS=ON ;;
        --deploy-only) DEPLOY_ONLY=1 ;;      # reuse the compiled wasm, only re-assemble the deploy directory
        *) echo "unknown arg $a"; exit 2 ;;
    esac
done

EMSDK="${EMSDK:-$HOME/emsdk-qt6}"
QT_WASM_ROOT="${QT_WASM_ROOT:-$HOME/Qt/6.11.1/wasm_$FLAVOUR}"
QT_HOST_ROOT="${QT_HOST_ROOT:-$HOME/Qt/6.11.1/macos}"
BUILD_DIR="build-wasm-$FLAVOUR"
DEPLOY_DIR="deploy/$FLAVOUR"
APP=operacao_ti

if [ "$DEPLOY_ONLY" = 0 ]; then
# shellcheck disable=SC1091
source "$EMSDK/emsdk_env.sh" >/dev/null
echo "emcc: $(emcc --version | head -1)"
echo "Qt wasm kit: $QT_WASM_ROOT"

"$QT_WASM_ROOT/bin/qt-cmake" -S . -B "$BUILD_DIR" -G Ninja \
    -DCMAKE_BUILD_TYPE="$BUILD_TYPE" \
    -DBUILD_TESTING=OFF \
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
    -DCMAKE_IGNORE_PREFIX_PATH=/usr/local \
    ${FETCHCONTENT_SOURCE_DIR_LLAMA_CPP:+-DFETCHCONTENT_SOURCE_DIR_LLAMA_CPP="$FETCHCONTENT_SOURCE_DIR_LLAMA_CPP"} \
    ${FETCHCONTENT_SOURCE_DIR_LIBDATACHANNEL:+-DFETCHCONTENT_SOURCE_DIR_LIBDATACHANNEL="$FETCHCONTENT_SOURCE_DIR_LIBDATACHANNEL"} \
    -DQT_HOST_PATH="$QT_HOST_ROOT"
cmake --build "$BUILD_DIR" --target "$APP" -j"$(sysctl -n hw.ncpu 2>/dev/null || nproc)"
fi   # DEPLOY_ONLY

# ---- deploy directory: everything a static host needs -------------------------------------
rm -rf "$DEPLOY_DIR"; mkdir -p "$DEPLOY_DIR"
cp "$BUILD_DIR"/bin/$APP.{js,wasm} "$BUILD_DIR"/bin/qtloader.js "$DEPLOY_DIR/"
[ -f "$BUILD_DIR/bin/$APP.worker.js" ] && cp "$BUILD_DIR/bin/$APP.worker.js" "$DEPLOY_DIR/"
# Runtime 3D assets are not compiled into the wasm: ship them as files. The deploy copy is
# shrunk for the web (textures -> JPEG, gzip meshes), small files go into one pack, the big ones are
# preloaded by Qt's loader into the in-memory filesystem (/game/assets/...).
mkdir -p "$DEPLOY_DIR/assets"
[ -d assets/runtime ] && cp -R assets/runtime "$DEPLOY_DIR/assets/"
[ -d assets/sprites ] && cp -R assets/sprites "$DEPLOY_DIR/assets/"
find "$DEPLOY_DIR/assets" -name .DS_Store -delete 2>/dev/null || true
python3 scripts/web-optimize-assets.py "$DEPLOY_DIR/assets" --characters tech_helmet,tech_headset,tech_polo
python3 scripts/make-web-pack.py "$DEPLOY_DIR"
python3 scripts/make-web-index.py "$DEPLOY_DIR" "$APP"
du -sh "$DEPLOY_DIR"/* | sed 's|^|  |'
echo
echo "Deploy dir ready: $DEPLOY_DIR"
echo "Serve it:         python3 scripts/serve.py $DEPLOY_DIR"
