#!/usr/bin/env bash
cd ../receipt_viewer_web

flutter build web --release

cd ..

rm -rf ./docs/viewer

mv ./receipt_viewer_web/build/web ./docs/viewer

sed -i "s/main.dart.js/main.dart.js?${RANDOM}/g" ./docs/viewer/index.html

./scripts/generate_sitemap.sh

