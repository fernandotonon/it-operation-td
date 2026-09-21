// Operação TI: Defenda o Datacenter - MIT License, see LICENSE (adapted from School Adventure, same author)
#pragma once

#include <QObject>
#include <QUrl>
#include <QtQml/qqmlregistration.h>

/// Web Audio playback for the WebAssembly build. Qt Multimedia / Clayground.Sound open an audio sink
/// on the main thread, which stalls the page in the browser; this hands the WAV bytes straight to the
/// browser's AudioContext instead (decodeAudioData + BufferSource/Gain nodes, music as a looping
/// source). The context is created lazily and resumed on the first user gesture, as browsers require.
/// On other platforms `available` is false and every call is a no-op.
class WebAudio : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(bool available READ available CONSTANT)
public:
    explicit WebAudio(QObject *parent = nullptr);
    bool available() const;

    Q_INVOKABLE bool load(const QString &name, const QUrl &source);      // qrc:/ or file URL of a WAV
    Q_INVOKABLE void play(const QString &name, double volume);
    Q_INVOKABLE void playMusic(const QString &name, double volume, bool loop);
    Q_INVOKABLE void stopMusic();
    Q_INVOKABLE void pauseMusic();
    Q_INVOKABLE void resumeMusic();
    Q_INVOKABLE void setMusicVolume(double volume);
};
