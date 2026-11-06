// Language matching and translation tables, without Qt:  node tests/lang.test.js
import { loadQmlJs } from "./qmljs-load.mjs"
import assert from "node:assert/strict"
import { fileURLToPath } from "node:url"
import { dirname, join } from "node:path"

const here = dirname(fileURLToPath(import.meta.url))
const S = loadQmlJs(join(here, "..", "app", "config", "strings.js"))

let passed = 0
function test(name, fn) {
    try { fn(); passed++; console.log("ok   " + name) }
    catch (e) { console.log("FAIL " + name + "\n     " + (e.stack || e)); process.exitCode = 1 }
}

test("code matching follows Scrapfall", () => {
    assert.equal(S.matchCode("pt_BR"), "pt_BR")
    assert.equal(S.matchCode("pt-br"), "pt_BR")
    assert.equal(S.matchCode("PT"), "pt_BR")
    assert.equal(S.matchCode("pt_BR.UTF-8"), "pt_BR")
    assert.equal(S.matchCode("en_US"), "en")
    assert.equal(S.matchCode("fr-FR"), "fr")
    assert.equal(S.matchCode("ko_KR"), "")
    assert.equal(S.matchCode(""), "")
    assert.equal(S.matchCode("C"), "")
})

test("priority: in-game > launcher > device > english", () => {
    assert.equal(S.resolve("", "", "ko_KR"), "en")
    assert.equal(S.resolve("", "", "pt_BR"), "pt_BR")
    assert.equal(S.resolve("", "en", "pt_BR"), "en")
    assert.equal(S.resolve("pt_BR", "en", "de"), "pt_BR")
    assert.equal(S.resolve("bogus", "de", "fr"), "de")
    assert.equal(S.resolve("", "xx", "it_IT"), "it")
    assert.equal(S.resolve("", "", ""), "en")
})

test("old untouched English save stays Auto; an explicit pick is kept", () => {
    assert.equal(S.storedChoice({ language: "en" }), "")
    assert.equal(S.storedChoice({ language: "pt_BR" }), "pt_BR")
    assert.equal(S.storedChoice({ language: "en", languageSet: true }), "en")
    assert.equal(S.storedChoice({ language: "", languageSet: true }), "")
    assert.equal(S.resolve(S.storedChoice({ language: "en" }), "de", "fr"), "de")
})

test("every language has the same keys, and line breaks match English", () => {
    assert.deepEqual(S.languages, ["en", "pt_BR", "de", "ru", "fr", "pl", "tr", "es", "it"])
    const en = S.table.en
    for (const code of S.languages) {
        const table = S.table[code]
        assert.ok(table, code)
        for (const key of Object.keys(en)) {
            assert.equal(typeof table[key], "string", code + " missing " + key)
            assert.notEqual(table[key].trim(), "", code + " empty " + key)
            assert.equal(table[key].split("\n").length, en[key].split("\n").length, code + " newlines " + key)
        }
        for (const key of Object.keys(table)) assert.ok(key in en, code + " unknown " + key)
        assert.equal(S.names[code] && S.names[code].length > 0, true, code + " name")
    }
    assert.equal(S.names.pt_BR, "Português (Brasil)")
    assert.equal(S.names.ru, "Русский")
    assert.equal(S.names.tr, "Türkçe")
})

console.log(passed + " passed")
