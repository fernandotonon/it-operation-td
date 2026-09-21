// Load a `.pragma library` QML JavaScript file into node and return its top-level `var`s.
import { readFileSync } from "node:fs"
export function loadQmlJs(path) {
    const src = readFileSync(path, "utf8").replace(/^\s*\.pragma library\s*$/m, "").replace(/^\s*\.import .*$/gm, "")
    const names = [...src.matchAll(/^(?:var|function)\s+([A-Za-z_$][\w$]*)/gm)].map(m => m[1])
    const fn = new Function(src + "\nreturn {" + [...new Set(names)].join(",") + "};")
    return fn()
}
