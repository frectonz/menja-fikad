const CACHE = "menja-fikad-v2";

// Everything the app needs is found by reading the built page and its script, so
// this file never has to list hashed file names or the sign images by hand.
async function precache(page) {
  const cache = await caches.open(CACHE);
  const html = await page.clone().text();

  const local = [...html.matchAll(/(?:src|href)="(\/[^"]+)"/g)].map((match) => match[1]);
  await cache.addAll(local);

  for (const script of local.filter((path) => path.endsWith(".js"))) {
    const source = await (await cache.match(script, { ignoreVary: true })).text();
    await cache.addAll([...new Set(source.match(/\/signs\/[a-z0-9-]+\.svg/g) ?? [])]);
  }

  const fonts = html.match(/href="(https:\/\/fonts\.googleapis\.com\/[^"]+)"/)?.[1].replaceAll("&amp;", "&");
  if (fonts) {
    try {
      const sheet = await fetch(fonts);
      const css = await sheet.clone().text();
      await cache.put(fonts, sheet);
      await cache.addAll([...new Set(css.match(/https:\/\/fonts\.gstatic\.com\/[^)]+/g) ?? [])]);
    } catch {
      // The app still works offline with system fonts.
    }
  }

  // The page goes in last, so a cached page never points at files that are missing.
  await cache.put("/", page);
}

// Build files from older versions are only removed once the cached page has settled,
// because a tab that opened just before an update is still loading the old ones.
async function dropOldBuilds(html) {
  const cache = await caches.open(CACHE);
  for (const request of await cache.keys()) {
    const { origin, pathname } = new URL(request.url);
    if (origin === location.origin && pathname.startsWith("/assets/") && !html.includes(`"${pathname}"`)) {
      await cache.delete(request);
    }
  }
}

async function refreshPage() {
  const cache = await caches.open(CACHE);
  const fresh = await fetch("/", { cache: "no-store" });
  if (!fresh.ok) return fresh;
  const cached = await cache.match("/", { ignoreVary: true });
  const html = await fresh.clone().text();
  if (cached && (await cached.text()) === html) await dropOldBuilds(html);
  else await precache(fresh.clone());
  return fresh;
}

// The server varies its responses by Origin, which would make the same file miss
// depending on whether the page or this worker asked for it.
function fromCache(request) {
  return caches.match(request, { ignoreVary: true });
}

async function revalidate(request) {
  const response = await fetch(request);
  // Some hosts answer a missing file with the page itself; never store that as the file.
  const isPage = response.headers.get("content-type")?.includes("text/html");
  if (response.ok && !isPage) await (await caches.open(CACHE)).put(request, response.clone());
  return response;
}

self.addEventListener("install", (event) => {
  event.waitUntil(refreshPage().then(() => self.skipWaiting()));
});

self.addEventListener("activate", (event) => {
  event.waitUntil(
    caches
      .keys()
      .then((names) => Promise.all(names.filter((name) => name !== CACHE).map((name) => caches.delete(name))))
      .then(() => self.clients.claim()),
  );
});

self.addEventListener("fetch", (event) => {
  const { request } = event;
  if (request.method !== "GET") return;

  if (request.mode === "navigate") {
    const refreshed = refreshPage();
    event.waitUntil(refreshed.catch(() => {}));
    event.respondWith(fromCache("/").then((hit) => hit ?? refreshed));
    return;
  }

  // Hashed build files never change, so the cached copy is always right.
  if (new URL(request.url).pathname.startsWith("/assets/")) {
    event.respondWith(fromCache(request).then((hit) => hit ?? revalidate(request)));
    return;
  }

  const refreshed = revalidate(request);
  event.waitUntil(refreshed.catch(() => {}));
  event.respondWith(fromCache(request).then((hit) => hit ?? refreshed));
});
