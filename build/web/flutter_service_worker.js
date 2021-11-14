'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "92f35025ff4c8c197afe435abfdde84b",
"assets/assets/images/by.jpg": "26544a6d08ca4ef92fd61356b6351da4",
"assets/assets/images/bycut.jpg": "5545d96ea992d9fa0333d49aafe4df38",
"assets/assets/images/chen.jpg": "5af4c0de4f7ec8f3832468beafd88fbd",
"assets/assets/images/chencut.jpg": "6dcd52e504be95c20d27a12f42e8c9ed",
"assets/assets/images/cy.jpg": "25c03174b1a3532415e1e048f762d2a0",
"assets/assets/images/cycut.jpg": "10f438868f331f84b79db1b4727dd29b",
"assets/assets/images/do.jpg": "4ad5ffffc2434d9a563625e03ec0602b",
"assets/assets/images/docut.jpg": "3fdaaf9c3efe9dc9be0818b1f8f92090",
"assets/assets/images/DON'T%2520FIGHT.jpg": "0ad7d497c98544d1c4a1348c33410dfd",
"assets/assets/images/EXODUS.jpg": "2048713ab77a653152ac1631f8c59e8a",
"assets/assets/images/g.jpg": "cf978d506af11546dc3125cf5936ea3b",
"assets/assets/images/kai.jpg": "cf2e294bf1bf8601b613dd75244e7b40",
"assets/assets/images/kaicut.jpg": "ad06dfff5e39cbdfdf1c2f107c564a9a",
"assets/assets/images/kimkai.jpg": "2335fdcdd3dc58b93b3159c6fec66af2",
"assets/assets/images/lay.png": "5edd3a64f389c8ccba2c544aa8e6502a",
"assets/assets/images/laycut.jpg": "73a7a99d0e9bb0b17f28b9c474a1f0ba",
"assets/assets/images/logo.jpg": "cb89a771f942f37486dcace6151e1b20",
"assets/assets/images/logo2.jpg": "6910f88c038430f3a1b5a55e309603a8",
"assets/assets/images/LOTTO.jpg": "72505514aecd24cace8484d56463d830",
"assets/assets/images/LOVE%2520ME%2520RIGHT.jpg": "254e44d374053e57de9bf2974e4fee17",
"assets/assets/images/LOVE%2520SHOT.jpg": "0fe809de9d1c14c799fd24be407f9c48",
"assets/assets/images/mama.jpg": "52594025a117bc79fbfe1bac5b5b10e1",
"assets/assets/images/miracles.jpg": "9381ee7dc8c3fd446b68201260982b6b",
"assets/assets/images/OBSESSION.jpg": "46d446a60a2a9b5620cd5cd3830069d9",
"assets/assets/images/overdose.jpg": "abf8e1468ad67f2bc300688b9f32eb4d",
"assets/assets/images/sh.jpg": "c871ed8786b65ebd8c59826182c76498",
"assets/assets/images/shcut.jpg": "5a35a2c2253b859061b2491e24be3567",
"assets/assets/images/SingForYou.jpg": "86aab16e1c3a608c512553891e967054",
"assets/assets/images/suho.png": "4ef3041d159acd61285319ee0f0dba31",
"assets/assets/images/suhocut.jpg": "0d4f774d64468c2efde12cb8f9f7f7d0",
"assets/assets/images/TEMPO.jpg": "8adf2ca1fc50cc25ae127efb73b7b739",
"assets/assets/images/THE%2520WAR.jpg": "7267b05b383690617f530a2148aa7fcb",
"assets/assets/images/xiu.jpg": "1cc52f050c2ed5af4efcddf137bf43a9",
"assets/assets/images/xiucut.jpg": "37becbae36e92f3c61355e0c4249b823",
"assets/assets/images/xoxo.jpg": "caebed2d8e9fe12c5d4369e1fbb90de0",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "f7aef7fb37e6affe8d906a44a68ef7bb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "d3f599345d24de0d49c1ea4fefc66b93",
"/": "d3f599345d24de0d49c1ea4fefc66b93",
"main.dart.js": "87b538e99b00525dcffee34fd4840201",
"manifest.json": "12177edcf3f491de6ca8ea4b1df3f285",
"version.json": "4390c2eba2e6c211ca6fb3aae7ed3017"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
