#!/usr/bin/env bash
cd ../receipt_viewer_web

flutter build web --release

cd ..

rm -rf ./docs/viewer

mv ./receipt_viewer_web/build/web ./docs/viewer

./scripts/generate_sitemap.sh

