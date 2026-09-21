#!/usr/bin/env node
// Headless-Chrome smoke test for the WebAssembly build, driven over the DevTools protocol
// (no npm dependencies - Node 22's built-in WebSocket and fetch are enough).
//
//   node scripts/browser-check.mjs <url> [--seconds 40] [--out shot.png] [--chrome PATH]
//
// Prints every console message (Qt routes qDebug/qWarning to console.*), reports
// crossOriginIsolated / SharedArrayBuffer availability, download sizes from the network
// events, and saves a screenshot at the end. Exit code 1 on uncaught errors or Qt fatals.
// Typical: node scripts/browser-check.mjs "http://localhost:8080/index.html?args=--autotest" --seconds 60
import { spawn } from "node:child_process";
import { writeFileSync } from "node:fs";

const args = process.argv.slice(2);
const url = args.find(a => !a.startsWith("--")) ?? "http://localhost:8080/index.html";
const opt = (name, def) => { const i = args.indexOf(name); return i >= 0 ? args[i + 1] : def; };
const seconds = Number(opt("--seconds", 40));
const out = opt("--out", "browser-check.png");
const chrome = opt("--chrome", process.env.CHROME ?? "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome");
const port = Number(opt("--port", process.env.CDP_PORT || 0)) || (9400 + Math.floor(Math.random() * 100));   // own DevTools port: other Chrome instances may hold 9333

const proc = spawn(chrome, [
  "--headless=new", `--remote-debugging-port=${port}`, "--remote-allow-origins=*", "--window-size=1280,720",
  "--no-first-run", "--user-data-dir=" + (process.env.PROFILE ?? "/tmp/opti-browser-check"), "--enable-unsafe-swiftshader",
  "--ignore-gpu-blocklist", "--use-angle=metal", "--enable-webgl", "--mute-audio", "about:blank",
], { stdio: "ignore" });

const sleep = ms => new Promise(r => setTimeout(r, ms));
let id = 0; const pending = new Map(); let ws;
const send = (method, params = {}) => new Promise((res, rej) => {
  const msgId = ++id; pending.set(msgId, { res, rej }); ws.send(JSON.stringify({ id: msgId, method, params }));
  setTimeout(() => { if (pending.has(msgId)) { pending.delete(msgId); rej(new Error(method + " timed out (page main thread blocked?)")) } }, 20000);
});

let fatal = false; const bytes = {}; let t0;
try {
  let targets;
  for (let i = 0; i < 50; ++i) { try { targets = await (await fetch(`http://127.0.0.1:${port}/json`)).json(); break; } catch { await sleep(200); } }
  if (!targets) throw new Error("DevTools endpoint never answered on port " + port);
  const page = targets.find(t => t.type === "page");
  console.error("devtools:", page.webSocketDebuggerUrl);
  ws = new WebSocket(page.webSocketDebuggerUrl);
  await new Promise((res, rej) => { ws.onopen = res; ws.onerror = e => rej(new Error("websocket error")); setTimeout(() => rej(new Error("websocket open timeout")), 10000) });
  console.error("connected");
  ws.onmessage = (ev) => {
    const m = JSON.parse(ev.data);
    if (m.id && pending.has(m.id)) { const p = pending.get(m.id); pending.delete(m.id); m.error ? p.rej(m.error) : p.res(m.result); return; }
    if (m.method === "Runtime.consoleAPICalled") {
      const text = m.params.args.map(a => a.value ?? a.description ?? "").join(" ");
      const t = ((Date.now() - t0) / 1000).toFixed(1);
      console.log(`[${t}s] console.${m.params.type}: ${text}`);
      if (/Qt Fatal|Qt Critical|RuntimeError|Aborted\(/.test(text)) fatal = true;
    } else if (m.method === "Runtime.exceptionThrown") {
      console.log("EXCEPTION:", m.params.exceptionDetails.text, m.params.exceptionDetails.exception?.description ?? "");
      fatal = true;
    } else if (m.method === "Network.responseReceived") {
      bytes[m.params.requestId] = { url: m.params.response.url, size: 0 };
    } else if (m.method === "Network.loadingFinished") {
      if (bytes[m.params.requestId]) bytes[m.params.requestId].size = m.params.encodedDataLength;
    }
  };
  await send("Runtime.enable"); await send("Network.enable"); await send("Page.enable");
  const mbps = Number(opt("--throttle", "0"));                // simulate a slow connection (Mbit/s) to watch the loading screen
  if (mbps > 0) await send("Network.emulateNetworkConditions", { offline: false, latency: 40, downloadThroughput: mbps * 125000, uploadThroughput: 1000000 });
  console.error("enabled, navigating");
  t0 = Date.now();
  await send("Page.navigate", { url });
  console.error("navigated, waiting", seconds, "s");
  const early = Number(opt("--early-shot", "0"));            // seconds: capture the loading screen
  if (early > 0) { await sleep(early * 1000); const s0 = await send("Page.captureScreenshot", { format: "png" }); writeFileSync(out.replace(/\.png$/, "-loading.png"), Buffer.from(s0.data, "base64")); console.log("screenshot:", out.replace(/\.png$/, "-loading.png")); await sleep(Math.max(0, seconds - early) * 1000); }
  else await sleep(seconds * 1000);
  const bootLine = await send("Runtime.evaluate", { expression: "JSON.stringify({ swControlled: !!(navigator.serviceWorker && navigator.serviceWorker.controller), loadingHidden: !document.getElementById('opti-loading') })", returnByValue: true }).catch(() => null);
  if (bootLine) console.log("page:", bootLine.result.value);
  const big = Object.values(bytes).filter(b => b.size > 200000).sort((a, b) => b.size - a.size);
  for (const b of big) console.log(`${(b.size / 1048576).toFixed(1)} MB  ${b.url.split("/").pop()}`);
  console.log(`total download: ${(Object.values(bytes).reduce((s, b) => s + b.size, 0) / 1048576).toFixed(1)} MB in ${Object.keys(bytes).length} requests`);
  const shot = await send("Page.captureScreenshot", { format: "png" });
  writeFileSync(out, Buffer.from(shot.data, "base64"));
  console.log("screenshot:", out);
  const iso = await send("Runtime.evaluate", { expression: "JSON.stringify({coi: window.crossOriginIsolated, sab: typeof SharedArrayBuffer !== 'undefined'})", returnByValue: true });
  console.log("isolation:", iso.result.value);
} catch (e) {
  console.error("browser-check failed:", e); fatal = true;
} finally {
  proc.kill();
}
process.exit(fatal ? 1 : 0);
