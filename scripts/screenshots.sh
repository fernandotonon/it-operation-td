#!/usr/bin/env bash
# Re-render the README/docs screenshots with clayrender (no window, deterministic states).
#   scripts/screenshots.sh [path/to/clayrender]
set -euo pipefail
cd "$(dirname "$0")/.."
R="${1:-${CLAYRENDER:-external/clayground/build/bin/clayrender}}"
[ -x "$R" ] || R="$HOME/clayground/build/bin/clayrender"
export QT_DISABLE_SHADER_DISK_CACHE=1
out=docs/screenshots; mkdir -p "$out"
"$R" app/Sandbox.qml --out "$out/title.png"   --size 1400x800
"$R" app/Sandbox.qml --out "$out/build.png"   --size 1400x800 --eval 'game.startMatch(); game.skipTutorial()' --eval 'game.onBoardTapped(0, -2.5); game.armTower("firewall")'
"$R" app/Sandbox.qml --out "$out/match.png"   --size 1400x800 --eval 'game.debugStart(7)' --eval 'game.debugAdvance(18)'
"$R" app/Sandbox.qml --out "$out/tower.png"   --size 1400x800 --eval 'game.debugStart(9)' --eval 'game.debugAdvance(6); game.onBoardTapped(0, -2.5)'
"$R" app/Sandbox.qml --out "$out/stealth.png" --size 1400x800 --eval 'game.debugStart(11, {s2:"scanner", s9:"patch", s1:"firewall", s3:"scanner"})' --eval 'game.debugAdvance(14)'
"$R" app/Sandbox.qml --out "$out/lock.png"    --size 1400x800 --eval 'game.debugStart(13, {s9:"patch", s1:"firewall", s2:"scanner", s3:"patch", s7:"traffic"})' --eval 'game.debugAdvance(26)'
"$R" app/Sandbox.qml --out "$out/boss.png"    --size 1400x800 --eval 'game.debugStart(15)' --eval 'game.debugAdvance(40)'
"$R" app/Sandbox.qml --out "$out/victory.png" --size 1400x800 --eval 'game.debugAutoplay()'
"$R" app/Sandbox.qml --out "$out/stages.png"  --size 1400x800 --eval 'game.openStages()'
"$R" app/Sandbox.qml --out "$out/stage7.png"  --size 1400x800 --eval 'game.debugStart(5, null, 6)' --eval 'game.debugAdvance(14)'
"$R" app/Sandbox.qml --out "$out/phone.png"   --size 850x390  --eval 'game.startMatch(); game.skipTutorial()' --eval 'game.onBoardTapped(0, -2.5); game.armTower("firewall")'
ls -la "$out"
