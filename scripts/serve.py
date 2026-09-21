#!/usr/bin/env python3
"""Static server for testing the WebAssembly build the way a real host serves it.

    python3 scripts/serve.py <dir> [--port 8080] [--limit-mbps 20]

* Cross-Origin-Opener-Policy / Cross-Origin-Embedder-Policy headers -> SharedArrayBuffer,
  which multithreaded Qt WebAssembly (needed for Qt Quick 3D) requires.
* application/wasm MIME type for .wasm files. No caching.
GitHub Pages cannot send these headers; there the bundled opti-sw.js (service worker) injects them.
"""
import argparse
import os
import shutil
import sys
import time
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer

NO_COI = False       # --no-coi: behave like GitHub Pages (no COOP/COEP headers), so the service worker must supply them
LIMIT_BPS = 0        # --limit-mbps: throttle every response (to watch the loading screen like a slow visitor)


class Handler(SimpleHTTPRequestHandler):
    extensions_map = {
        **SimpleHTTPRequestHandler.extensions_map,
        ".wasm": "application/wasm", ".js": "text/javascript", ".mjs": "text/javascript",
        ".qml": "text/plain; charset=utf-8", ".mesh": "application/octet-stream",
        ".qad": "application/octet-stream", ".json": "application/json", ".wav": "audio/wav",
    }

    def end_headers(self):
        if not NO_COI:
            self.send_header("Cross-Origin-Opener-Policy", "same-origin")
            self.send_header("Cross-Origin-Embedder-Policy", "require-corp")
            self.send_header("Cross-Origin-Resource-Policy", "same-origin")
        self.send_header("Cache-Control", "no-store")
        super().end_headers()

    def copyfile(self, source, outputfile):
        if LIMIT_BPS <= 0:
            return shutil.copyfileobj(source, outputfile)
        chunk = max(4096, LIMIT_BPS // 20)                  # ~20 chunks per second
        while True:
            data = source.read(chunk)
            if not data:
                break
            outputfile.write(data); outputfile.flush()
            time.sleep(len(data) / LIMIT_BPS)

    def log_message(self, fmt, *args):
        sys.stderr.write("%s %s\n" % (self.address_string(), fmt % args))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("directory")
    ap.add_argument("--port", type=int, default=8080)
    ap.add_argument("--limit-mbps", type=float, default=0, help="throttle responses to this bandwidth (Mbit/s)")
    ap.add_argument("--no-coi", action="store_true", help="omit COOP/COEP headers (test the service-worker path like GitHub Pages)")
    a = ap.parse_args()
    global LIMIT_BPS, NO_COI
    LIMIT_BPS = int(a.limit_mbps * 125000); NO_COI = a.no_coi
    os.chdir(a.directory)
    srv = ThreadingHTTPServer(("127.0.0.1", a.port), Handler)
    print(f"Serving {os.getcwd()} at http://localhost:{a.port}/  (COOP/COEP on, no cache)")
    try:
        srv.serve_forever()
    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    main()
