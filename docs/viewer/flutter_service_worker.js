'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assets/by_x0A.png": "b147d866da306cf0ca32644f08ea1c7d",
"assets/assets/CutiveMono-Regular.ttf": "f33327cdc7c1c759c638ac5860736cbd",
"assets/AssetManifest.json": "8270349eb0b7f4243aaf13ff17eaa567",
"assets/FontManifest.json": "22fd535959de9c00316fdf9d447e5815",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/LICENSE": "0a66ed712f76b55f5f211c766dca2127",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"main.dart.js": "a5265d8c7e78b01335e44baf7e2a8346",
"manifest.json": "fbcf36b8319082bf705b3bb324c277e2",
"icons/Icon-512.png": "86168dc4184eb349bc91d13b3ee73368",
"icons/Icon-192.png": "66d3e39271d1372841163e0732faaca5",
"index.html": "790a07c5353b94aebc7217151ad6225b",
"/": "790a07c5353b94aebc7217151ad6225b",
"favicon.png": "c117d31a30430e9bbaef2eeb2bcba038"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
