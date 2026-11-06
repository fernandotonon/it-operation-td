// Operação TI: Defenda o Datacenter - MIT License, see LICENSE
#include "launchlang.h"

#include <QProcessEnvironment>

LaunchEnv::LaunchEnv(QObject *parent)
    : QObject(parent)
{
}

QString LaunchEnv::lang() const
{
    return QProcessEnvironment::systemEnvironment().value(QStringLiteral("QTMESH_LANG"));
}
