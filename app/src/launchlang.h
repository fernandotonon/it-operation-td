// Operação TI: Defenda o Datacenter - MIT License, see LICENSE
#pragma once

#include <QObject>
#include <QString>
#include <QtQml/qqmlregistration.h>

/// Reads QTMESH_LANG, set by the QtMesh Games launcher on native launches.
/// The web build receives the same code as --lang= (the page cannot see the process environment).
class LaunchEnv : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(QString lang READ lang CONSTANT)
public:
    explicit LaunchEnv(QObject *parent = nullptr);

    QString lang() const;
};
