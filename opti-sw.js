/*! opti-sw.js - service worker for the web build of "Operação TI: Defenda o Datacenter" (adapted from School Adventure).
 *  Based on coi-serviceworker v0.1.7 (Guido Zuidhof and contributors, MIT): adds the COOP/COEP headers
 *  GitHub Pages cannot set (needed for the multithreaded wasm), and on top of that
 *   - caches the game files (wasm, js, assets) per build so the second visit loads from disk,
 *   - serves `.mesh` files from their `.mesh.gz` copy, inflated with DecompressionStream
 *     (static hosts do not compress model/mesh).
 *  a80b0db2445f is replaced at deploy time; a new build means a new cache, old ones are dropped. */
const BUILD_ID = "a80b0db2445f";
const CACHE = "opti-" + BUILD_ID;
let coepCredentialless = false;

if (typeof window === "undefined") {
    self.addEventListener("install", () => self.skipWaiting());
    self.addEventListener("activate", (event) => event.waitUntil((async () => {
        await self.clients.claim();                       // take the open pages first, then tidy old builds
        for (const key of await caches.keys()) if (key.startsWith("opti-") && key !== CACHE) await caches.delete(key);
    })()));

    self.addEventListener("message", (ev) => {
        if (!ev.data) return;
        if (ev.data.type === "deregister") {
            self.registration.unregister().then(() => self.clients.matchAll()).then(clients => clients.forEach(c => c.navigate(c.url)));
        } else if (ev.data.type === "coepCredentialless") {
            coepCredentialless = ev.data.value;
        }
    });

    const withIsolationHeaders = (response) => {
        if (response.status === 0) return response;
        const headers = new Headers(response.headers);
        headers.set("Cross-Origin-Embedder-Policy", coepCredentialless ? "credentialless" : "require-corp");
        if (!coepCredentialless) headers.set("Cross-Origin-Resource-Policy", "cross-origin");
        headers.set("Cross-Origin-Opener-Policy", "same-origin");
        return new Response(response.body, { status: response.status, statusText: response.statusText, headers });
    };

    const isGameFile = (url) => {
        const p = url.pathname;
        return url.origin === self.location.origin && !p.endsWith("/") && !p.endsWith(".html") && !p.endsWith("opti-sw.js") &&
               (p.includes("/assets/") || /\.(wasm|js|json|bin|mesh|png|jpg|svg)$/.test(p));
    };

    const fetchGameFile = async (request, url) => {
        // meshes: prefer the gzip copy and inflate it here
        if (url.pathname.endsWith(".mesh") && typeof DecompressionStream === "function") {
            try {
                const gz = await fetch(url.origin + url.pathname + ".gz" + url.search, { cache: "no-cache" });   // keep the ?v= build stamp
                if (gz.ok && gz.body) {
                    const headers = new Headers({ "Content-Type": "model/mesh" });
                    return new Response(gz.body.pipeThrough(new DecompressionStream("gzip")), { status: 200, headers });
                }
            } catch (e) { /* fall through to the plain file */ }
        }
        return fetch(request);
    };

    self.addEventListener("fetch", (event) => {
        const r = event.request;
        if (r.cache === "only-if-cached" && r.mode !== "same-origin") return;
        const request = (coepCredentialless && r.mode === "no-cors") ? new Request(r, { credentials: "omit" }) : r;
        const url = new URL(r.url);
        if (r.method === "GET" && isGameFile(url)) {
            event.respondWith((async () => {
                const cache = await caches.open(CACHE);
                const hit = await cache.match(request, { ignoreSearch: false });
                if (hit) return withIsolationHeaders(hit);
                const response = await fetchGameFile(request, url);
                if (response.ok && response.status === 200 && response.body) {
                    // stream to the page (so its progress bar moves) while a tee'd copy goes into the cache
                    const [toPage, toCache] = response.body.tee();
                    event.waitUntil(cache.put(request, new Response(toCache, { status: 200, headers: response.headers })).catch(() => {}));
                    return withIsolationHeaders(new Response(toPage, { status: 200, statusText: response.statusText, headers: response.headers }));
                }
                return withIsolationHeaders(response);
            })().catch((e) => { console.error(e); return fetch(request); }));
            return;
        }
        event.respondWith(fetch(request).then(withIsolationHeaders).catch((e) => console.error(e)));
    });

} else {
    (() => {
        const reloadedBySelf = window.sessionStorage.getItem("coiReloadedBySelf");
        window.sessionStorage.removeItem("coiReloadedBySelf");
        const coepDegrading = (reloadedBySelf == "coepdegrade");
        const coi = {
            shouldRegister: () => !reloadedBySelf,
            shouldDeregister: () => false,
            coepCredentialless: () => true,
            coepDegrade: () => true,
            doReload: () => window.location.reload(),
            quiet: false,
            ...window.coi
        };
        const n = navigator;
        const controlling = n.serviceWorker && n.serviceWorker.controller;
        if (controlling && !window.crossOriginIsolated) window.sessionStorage.setItem("coiCoepHasFailed", "true");
        const coepHasFailed = window.sessionStorage.getItem("coiCoepHasFailed");
        if (controlling) {
            const reloadToDegrade = coi.coepDegrade() && !(coepDegrading || window.crossOriginIsolated);
            n.serviceWorker.controller.postMessage({ type: "coepCredentialless", value: (reloadToDegrade || coepHasFailed && coi.coepDegrade()) ? false : coi.coepCredentialless() });
            if (reloadToDegrade) {
                !coi.quiet && console.log("Reloading page to degrade COEP.");
                window.sessionStorage.setItem("coiReloadedBySelf", "coepdegrade");
                coi.doReload("coepdegrade");
            }
            if (coi.shouldDeregister()) n.serviceWorker.controller.postMessage({ type: "deregister" });
        }
        // Not isolated and not (yet) controlled - e.g. the page reloaded before the fresh worker became active:
        // wait for the worker, then reload once more (bounded, so a browser that cannot isolate never loops).
        if (window.crossOriginIsolated === false && n.serviceWorker && !controlling) {
            const reloads = Number(window.sessionStorage.getItem("coiReloads") || 0);
            if (reloads < 3) {
                n.serviceWorker.ready.then(() => {
                    const go = () => { window.sessionStorage.setItem("coiReloads", String(reloads + 1)); window.sessionStorage.setItem("coiReloadedBySelf", "controllerchange"); coi.doReload(); };
                    if (n.serviceWorker.controller) go(); else n.serviceWorker.addEventListener("controllerchange", go, { once: true });
                });
            }
        }
        if (window.crossOriginIsolated !== false || !coi.shouldRegister()) {
            // already isolated (or reloaded by us): still register/update so caching works and the worker activates
            if (n.serviceWorker && window.isSecureContext) n.serviceWorker.register(window.document.currentScript.src).catch(() => {});
            return;
        }
        if (!window.isSecureContext) { !coi.quiet && console.log("COOP/COEP Service Worker not registered, a secure context is required."); return; }
        if (!n.serviceWorker) { !coi.quiet && console.error("COOP/COEP Service Worker not registered, perhaps due to private mode."); return; }
        n.serviceWorker.register(window.document.currentScript.src).then((registration) => {
            !coi.quiet && console.log("COOP/COEP Service Worker registered", registration.scope);
            registration.addEventListener("updatefound", () => {
                !coi.quiet && console.log("Reloading page to make use of updated COOP/COEP Service Worker.");
                window.sessionStorage.setItem("coiReloadedBySelf", "updatefound");
                coi.doReload();
            });
            if (registration.active && !n.serviceWorker.controller) {
                !coi.quiet && console.log("Reloading page to make use of COOP/COEP Service Worker.");
                window.sessionStorage.setItem("coiReloadedBySelf", "notcontrolling");
                coi.doReload();
            }
        }, (err) => { !coi.quiet && console.error("COOP/COEP Service Worker failed to register:", err); });
    })();
}
