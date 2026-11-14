#!/usr/bin/env bash
# Build a short marketing gameplay trailer from deterministic clayrender beats.
#   scripts/marketing-video.sh [path/to/clayrender]
#
# Output: docs/marketing/gameplay-trailer.mp4 (~20 s, 1280x720, H.264)
# Stills get a slow Ken Burns pan so they never look frozen; match combat is a
# dense frame sequence played at 24 fps.
set -euo pipefail
cd "$(dirname "$0")/.."
R="${1:-${CLAYRENDER:-}}"
if [ -z "${R}" ] || [ ! -x "$R" ]; then
  for c in external/clayground/build/bin/clayrender "$HOME/clayground/build/bin/clayrender"; do
    [ -x "$c" ] && R=$c && break
  done
fi
[ -x "$R" ] || { echo "clayrender not found"; exit 1; }
command -v ffmpeg >/dev/null || { echo "ffmpeg required"; exit 1; }

export QT_DISABLE_SHADER_DISK_CACHE=1
OUT=docs/marketing
FRAMES=$OUT/frames
CLIPS=$OUT/clips
mkdir -p "$FRAMES" "$CLIPS" "$OUT"
SIZE=1280x720
SKIP_RENDER=${SKIP_RENDER:-0}
# Marketing trailer language (override save / OS). Default English.
LANG_CODE="${TRAILER_LANG:-en}"

render() {
  local name=$1; shift
  if [ "$SKIP_RENDER" = 1 ] && [ -f "$FRAMES/$name.png" ]; then
    echo "  [$name] (cached)"
    return
  fi
  echo "  [$name]"
  # Force English LAST: earlier evals (e.g. setReducedFx) write settings and
  # re-trigger applyLanguage() from the saved locale.
  "$R" app/Sandbox.qml --out "$FRAMES/$name.png" --size "$SIZE" \
    "$@" \
    --eval "Strings.apply('$LANG_CODE', '', '')" >/dev/null
}

# Soft push-in / pull-out via scripts/kenburns.py (LANCZOS — no ffmpeg shake).
kenburns() {
  python3 scripts/kenburns.py "$1" "$2" "$3" "${4:-in}"
}

echo "== hero stills =="
render 00_title
render 01_stages --eval 'game.openStages()'
render 02_build \
  --eval 'game.startMatch(); game.skipTutorial()' \
  --eval 'game.onBoardTapped(0, -2.5); game.armTower("firewall")'
render 03_tower \
  --eval 'game.debugStart(6)' \
  --eval 'game.debugAdvance(6); game.onBoardTapped(0, -2.5)'
render 04_stealth \
  --eval 'game.debugStart(11, {s2:"scanner", s9:"patch", s1:"firewall", s3:"scanner"}, 9)' \
  --eval 'game.debugAdvance(14)'
render 05_boss \
  --eval 'game.debugStart(15, null, 9)' \
  --eval 'game.debugAdvance(40)'
render 06_victory --eval 'game.debugAutoplay()'

echo "== live match burst (dense) =="
# Low-DPS layout (scanner + slows) so threats walk the path instead of melting
# into FX. 96 frames × 0.14 s from t=3.2 → ~13.4 s sim; play at 16 fps → ~6 s.
# setReducedFx cuts death/coin bursts that were covering the meshes.
LAYOUT='{s2:"scanner", s7:"traffic", s4:"traffic"}'
MATCH_N=96
for i in $(seq -w 0 $((MATCH_N - 1))); do
  n=$((10#$i))
  adv=$(python3 -c "print(round(3.2 + $n * 0.14, 3))")
  render "10_match_$i" \
    --eval "game.setReducedFx(true); game.debugStart(5, $LAYOUT, 6)" \
    --eval "game.debugAdvance($adv)"
done

echo "== assemble clips =="
kenburns "$FRAMES/00_title.png"   "$CLIPS/00_title.mp4"   2.0 in
kenburns "$FRAMES/01_stages.png"  "$CLIPS/01_stages.mp4"  1.6 out
kenburns "$FRAMES/02_build.png"   "$CLIPS/02_build.mp4"   1.5 in
kenburns "$FRAMES/03_tower.png"   "$CLIPS/03_tower.mp4"   1.4 out

# Match sequence as a real video (24 fps), not duration-held stills.
MATCH_LIST=$CLIPS/match_concat.txt
: > "$MATCH_LIST"
for i in $(seq -w 0 $((MATCH_N - 1))); do
  printf "file '%s'\n" "$PWD/$FRAMES/10_match_$i.png" >> "$MATCH_LIST"
done
ffmpeg -y -r 16 -f concat -safe 0 -i "$MATCH_LIST" \
  -vf "scale=1280:720:force_original_aspect_ratio=decrease,pad=1280:720:(ow-iw)/2:(oh-ih)/2,setsar=1,fps=30,format=yuv420p" \
  -c:v libx264 -preset veryfast -crf 20 -pix_fmt yuv420p \
  "$CLIPS/10_match.mp4" >/dev/null 2>&1

kenburns "$FRAMES/04_stealth.png" "$CLIPS/04_stealth.mp4" 1.5 in
kenburns "$FRAMES/05_boss.png"    "$CLIPS/05_boss.mp4"    1.8 out
kenburns "$FRAMES/06_victory.png" "$CLIPS/06_victory.mp4" 2.2 in

echo "== crossfade stitch =="
# Soft 0.35 s crossfades so cuts never hard-freeze.
OFFSETS=$(ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 "$CLIPS/00_title.mp4")
# Build filter graph dynamically
clips=(00_title 01_stages 02_build 03_tower 10_match 04_stealth 05_boss 06_victory)
inputs=()
for c in "${clips[@]}"; do inputs+=(-i "$CLIPS/$c.mp4"); done

# xfade chain: [0][1]xfade → [v01]; [v01][2]xfade → ...
xd=0.35
filter=""
prev="[0:v]"
acc=$OFFSETS
for i in $(seq 1 $((${#clips[@]} - 1))); do
  label="v$i"
  # offset = accumulated duration so far minus crossfade
  off=$(python3 -c "print(max(0.0, $acc - $xd))")
  if [ "$i" -eq $((${#clips[@]} - 1)) ]; then
    filter+="${prev}[$i:v]xfade=transition=fade:duration=${xd}:offset=${off}[outv];"
  else
    filter+="${prev}[$i:v]xfade=transition=fade:duration=${xd}:offset=${off}[${label}];"
    prev="[${label}]"
  fi
  dur=$(ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 "$CLIPS/${clips[$i]}.mp4")
  acc=$(python3 -c "print($acc + $dur - $xd)")
done

ffmpeg -y "${inputs[@]}" -filter_complex "$filter" -map "[outv]" \
  -c:v libx264 -preset medium -crf 20 -pix_fmt yuv420p -movflags +faststart \
  "$OUT/gameplay-trailer.mp4"

ffmpeg -y -i "$OUT/gameplay-trailer.mp4" \
  -vf "fps=12,scale=640:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" \
  -loop 0 "$OUT/gameplay-trailer.gif"

ls -lh "$OUT/gameplay-trailer.mp4" "$OUT/gameplay-trailer.gif"
ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 "$OUT/gameplay-trailer.mp4"
echo "DONE $OUT/gameplay-trailer.mp4"
