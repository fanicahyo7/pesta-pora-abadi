'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "953e363da2d0adf8cf105de44ea92464",
"assets/AssetManifest.bin.json": "0d1ccd1ef706bbfd303c6dd1629efc36",
"assets/AssetManifest.json": "13683b48938b660a80b9efe6018c71a9",
"assets/assets/afindo.jpeg": "9dbae14f8be303106cdfbbe78d219cc0",
"assets/assets/asia.png": "99ea37c22615f1960d7fb8aeb8dc5b43",
"assets/assets/astra.png": "a379d4331cc35628e175533da8a1981b",
"assets/assets/dhilan.png": "47fcb543a1b0254e68405051558d6b08",
"assets/assets/fnlogo.png": "f1e517bfe4ed8aeaf961acbaa9f18cb1",
"assets/assets/fonts/agustina.otf": "7b9833076716a8d14eec0cf885a3153c",
"assets/assets/fonts/montserrat.ttf": "ee6539921d713482b8ccd4d0d23961bb",
"assets/assets/hi.gif": "cad5918d86b6a7e83f1fb4acead70e4c",
"assets/assets/pasfoto.jpg": "e5abad23d305888d0eb12c51927d68a0",
"assets/assets/pesta-pora.png": "534aa2b4e6787e52134b9868bc50ca1a",
"assets/assets/ppa.jpg": "6f55e674729c86bced031c5a2e1b55f1",
"assets/assets/projects/dry-hp.png": "7940010184c896fbc6a732b7efa2f326",
"assets/assets/projects/dry-video.mp4": "d29cd453bbb0f15f30559565e3e199a5",
"assets/assets/projects/Incoming.jpg": "c8a218b7083eecfdc4dfca499e4f29b1",
"assets/assets/projects/jtm1.jpg": "aa83d8305439750de33aea67551f7b7c",
"assets/assets/projects/logo-full.png": "f14dd5631e5b53ec9ac36571977ba294",
"assets/assets/projects/obs-laptop.png": "7173431120f3a492d5ae108e5702f569",
"assets/assets/projects/obs-video.mp4": "0701e11a021debbed1fbeb160005fbe3",
"assets/assets/projects/prod.jpg": "ce714f5af3be0ee36419eaaf187a3817",
"assets/assets/projects/sosialisasi.jpeg": "e541843193e8ae20f2f21b4665bae794",
"assets/assets/projects/wh.jpg": "b5645d8ec9e120a7d0e3807da8b4d4cf",
"assets/assets/smk.jpeg": "0b6575e953b4620863354a54ada7806e",
"assets/assets/togamas.png": "55e11635fb808843600a777636fb3ed8",
"assets/FontManifest.json": "53db916e40f5cd339f7e07ff4f1303a1",
"assets/fonts/MaterialIcons-Regular.otf": "2535a1631d46f3ea9dd45742be6549e1",
"assets/NOTICES": "a2fc6deb6649fba87cb38ad2db4952e6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "f1e517bfe4ed8aeaf961acbaa9f18cb1",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"fnlogo.png": "f1e517bfe4ed8aeaf961acbaa9f18cb1",
"icons/android-icon-144x144.png": "f3cb725a3518c4f8324272e8509caf46",
"icons/android-icon-192x192.png": "66881777171b9e2a794a28cd703524d5",
"icons/android-icon-36x36.png": "d42e2117b16faa8ce0ebead968d7da62",
"icons/android-icon-48x48.png": "1095c6e3edfb70d63c67600ccada4783",
"icons/android-icon-72x72.png": "43e48088054f7f622b5d3d17966ed5e6",
"icons/android-icon-96x96.png": "0ca9518156827098bf8a4f3d7a4ac99f",
"icons/apple-icon-114x114.png": "5e31ac635c539797131c1bac218e854e",
"icons/apple-icon-120x120.png": "241b977633162452b54166eadaa54c25",
"icons/apple-icon-144x144.png": "f3cb725a3518c4f8324272e8509caf46",
"icons/apple-icon-152x152.png": "ed7bebcc49eaa0a5d2edc59f60c03850",
"icons/apple-icon-180x180.png": "fa8327e3b46248abf5aee6b3b9d0ab01",
"icons/apple-icon-57x57.png": "eecdf75a4183854708f095c0d52ad018",
"icons/apple-icon-60x60.png": "18c437bd24f5de073dbcec678ae802aa",
"icons/apple-icon-72x72.png": "43e48088054f7f622b5d3d17966ed5e6",
"icons/apple-icon-76x76.png": "262e0eb5ce8a7ce947f0f5280789174b",
"icons/apple-icon-precomposed.png": "16257d8e8c53a7387c5a2825e9456ea4",
"icons/apple-icon.png": "16257d8e8c53a7387c5a2825e9456ea4",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/favicon-16x16.png": "622bfd9a73cfd80f4419e4cd9be100f1",
"icons/favicon-32x32.png": "e7362c379567e724f3c5699ad566c599",
"icons/favicon-96x96.png": "0ca9518156827098bf8a4f3d7a4ac99f",
"icons/favicon.ico": "efcd46ec0abcf61f24656454f1f2f42f",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/ms-icon-144x144.png": "f3cb725a3518c4f8324272e8509caf46",
"icons/ms-icon-150x150.png": "47ca49e2215710743712a86a0381b4f1",
"icons/ms-icon-310x310.png": "745a7fb4ec8152d633b8b2c745254993",
"icons/ms-icon-70x70.png": "5423e4e0d1083c60b225039152bbfb8a",
"index.html": "65f9ec281b520d1347a3e915d84eb9af",
"/": "65f9ec281b520d1347a3e915d84eb9af",
"main.dart.js": "d68a8cab0f2d87a63f7c8860dd07dc35",
"manifest.json": "028e94a9edd225a01c06d476350ef9a8",
"pesta-pora.png": "534aa2b4e6787e52134b9868bc50ca1a",
"style.css": "ea14c82542cebe5c0a3d5d8e2c79f3d2",
"style.css.map": "0613c67b854dd49e7ea53d4c88d8eaa6",
"style.sass": "e029d4c59c7df8ad2e7c986ca176bc10",
"version.json": "5c88900639fe740e70f2c58cdc6849a0"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
