// Sound effects through Clayground.Sound. Master volume + mute from the settings; no music track
// is shipped (no licensed source available), so the manager only plays short synthesized cues.
import QtQuick
import Clayground.Sound

Item {
    id: audio
    property real volume: 0.8
    property bool muted: false
    readonly property real gain: muted ? 0 : volume

    function play(name) {
        if (gain <= 0) return
        var s = sounds[name]
        if (s) s.play()
    }
    property var sounds: ({ shot: snd_shot, burst: snd_burst, hit: snd_hit, death: snd_death, escape: snd_escape, place: snd_place, sell: snd_sell, upgrade: snd_upgrade, wave: snd_wave, win: snd_win, lose: snd_lose, click: snd_click, reboot: snd_reboot, alarm: snd_alarm, reveal: snd_reveal })
    Sound { id: snd_shot;    source: Qt.resolvedUrl("../assets/audio/shot.wav");    volume: audio.gain * 0.35 }
    Sound { id: snd_burst;   source: Qt.resolvedUrl("../assets/audio/burst.wav");   volume: audio.gain * 0.5 }
    Sound { id: snd_hit;     source: Qt.resolvedUrl("../assets/audio/hit.wav");     volume: audio.gain * 0.25 }
    Sound { id: snd_death;   source: Qt.resolvedUrl("../assets/audio/death.wav");   volume: audio.gain * 0.5 }
    Sound { id: snd_escape;  source: Qt.resolvedUrl("../assets/audio/escape.wav");  volume: audio.gain * 0.8 }
    Sound { id: snd_place;   source: Qt.resolvedUrl("../assets/audio/place.wav");   volume: audio.gain * 0.7 }
    Sound { id: snd_sell;    source: Qt.resolvedUrl("../assets/audio/sell.wav");    volume: audio.gain * 0.7 }
    Sound { id: snd_upgrade; source: Qt.resolvedUrl("../assets/audio/upgrade.wav"); volume: audio.gain * 0.7 }
    Sound { id: snd_wave;    source: Qt.resolvedUrl("../assets/audio/wave.wav");    volume: audio.gain * 0.8 }
    Sound { id: snd_win;     source: Qt.resolvedUrl("../assets/audio/win.wav");     volume: audio.gain * 0.9 }
    Sound { id: snd_lose;    source: Qt.resolvedUrl("../assets/audio/lose.wav");    volume: audio.gain * 0.9 }
    Sound { id: snd_click;   source: Qt.resolvedUrl("../assets/audio/click.wav");   volume: audio.gain * 0.6 }
    Sound { id: snd_reboot;  source: Qt.resolvedUrl("../assets/audio/reboot.wav");  volume: audio.gain * 0.8 }
    Sound { id: snd_alarm;   source: Qt.resolvedUrl("../assets/audio/alarm.wav");   volume: audio.gain * 0.7 }
    Sound { id: snd_reveal;  source: Qt.resolvedUrl("../assets/audio/reveal.wav");  volume: audio.gain * 0.6 }
}
