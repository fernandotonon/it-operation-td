// Operação TI: Defenda o Datacenter - MIT License, see LICENSE (adapted from School Adventure, same author)
#include "savestore.h"

#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#include <cstdlib>

// clang-format off
EM_JS(char *, opti_ls_get, (const char *key), {
    try {
        const v = window.localStorage.getItem(UTF8ToString(key));
        if (v === null) return 0;
        const n = lengthBytesUTF8(v) + 1;
        const p = _malloc(n);
        stringToUTF8(v, p, n);
        return p;
    } catch (e) { return 0; }
});
EM_JS(int, opti_ls_set, (const char *key, const char *value), {
    try { window.localStorage.setItem(UTF8ToString(key), UTF8ToString(value)); return 1; }
    catch (e) { return 0; }
});
EM_JS(void, opti_ls_remove, (const char *key), {
    try { window.localStorage.removeItem(UTF8ToString(key)); } catch (e) {}
});
EM_JS(void, opti_ls_clear_prefix, (const char *prefix), {
    try {
        const p = UTF8ToString(prefix);
        const doomed = [];
        for (let i = 0; i < window.localStorage.length; ++i) {
            const k = window.localStorage.key(i);
            if (k && k.startsWith(p)) doomed.push(k);
        }
        for (const k of doomed) window.localStorage.removeItem(k);
    } catch (e) {}
});
// clang-format on
#else
#include <QSettings>
#endif

SaveStore::SaveStore(QObject *parent)
    : QObject(parent), m_prefix(QStringLiteral("operacao_ti/"))
{
}

QString SaveStore::backend() const
{
#ifdef __EMSCRIPTEN__
    return QStringLiteral("localStorage");
#else
    return QStringLiteral("QSettings");
#endif
}

QString SaveStore::get(const QString &key, const QString &defaultValue) const
{
    const QString k = m_prefix + key;
#ifdef __EMSCRIPTEN__
    char *raw = opti_ls_get(k.toUtf8().constData());
    if (!raw)
        return defaultValue;
    const QString v = QString::fromUtf8(raw);
    std::free(raw);
    return v;
#else
    QSettings s(QStringLiteral("OperacaoTI"), QStringLiteral("OperacaoTI"));
    return s.value(k, defaultValue).toString();
#endif
}

bool SaveStore::set(const QString &key, const QString &value)
{
    const QString k = m_prefix + key;
#ifdef __EMSCRIPTEN__
    return opti_ls_set(k.toUtf8().constData(), value.toUtf8().constData()) == 1;
#else
    QSettings s(QStringLiteral("OperacaoTI"), QStringLiteral("OperacaoTI"));
    s.setValue(k, value);
    s.sync();
    return s.status() == QSettings::NoError;
#endif
}

bool SaveStore::has(const QString &key) const
{
    const QString k = m_prefix + key;
#ifdef __EMSCRIPTEN__
    char *raw = opti_ls_get(k.toUtf8().constData());
    if (!raw)
        return false;
    std::free(raw);
    return true;
#else
    QSettings s(QStringLiteral("OperacaoTI"), QStringLiteral("OperacaoTI"));
    return s.contains(k);
#endif
}

void SaveStore::remove(const QString &key)
{
    const QString k = m_prefix + key;
#ifdef __EMSCRIPTEN__
    opti_ls_remove(k.toUtf8().constData());
#else
    QSettings s(QStringLiteral("OperacaoTI"), QStringLiteral("OperacaoTI"));
    s.remove(k);
#endif
}

void SaveStore::clear()
{
#ifdef __EMSCRIPTEN__
    opti_ls_clear_prefix(m_prefix.toUtf8().constData());
#else
    QSettings s(QStringLiteral("OperacaoTI"), QStringLiteral("OperacaoTI"));
    s.remove(m_prefix.chopped(1));
#endif
}
