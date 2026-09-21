// Operação TI: Defenda o Datacenter - MIT License, see LICENSE (adapted from School Adventure, same author)
#pragma once

#include <QObject>
#include <QString>
#include <QtQml/qqmlregistration.h>

/// Persistent key/value storage for the save system.
///  * WebAssembly: the browser's window.localStorage (synchronous, survives reloads, per origin)
///  * desktop:     QSettings (platform-native location)
/// Values are strings; the QML SaveSystem serialises JSON into them.
class SaveStore : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(QString backend READ backend CONSTANT)
public:
    explicit SaveStore(QObject *parent = nullptr);

    QString backend() const;
    Q_INVOKABLE QString get(const QString &key, const QString &defaultValue = QString()) const;
    Q_INVOKABLE bool set(const QString &key, const QString &value);
    Q_INVOKABLE bool has(const QString &key) const;
    Q_INVOKABLE void remove(const QString &key);
    Q_INVOKABLE void clear();

private:
    QString m_prefix;
};
