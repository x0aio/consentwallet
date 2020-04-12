#!/bin/bash

# values: always hourly daily weekly monthly yearly never
FREQ="weekly"

DATE=$( git log -n 1 --format=%at docs/index.html | xargs -I{} date -d @{} +%Y-%m-%d )

# begin new sitemap
exec 1> docs/sitemap.xml

# print head
echo '<?xml version="1.0" encoding="UTF-8"?>'
echo '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">'
echo "<url>"
echo " <loc>https://consentwallet.app/</loc>"
echo " <lastmod>$DATE</lastmod>"
echo " <changefreq>$FREQ</changefreq>"
echo "</url>"

# print foot
echo "</urlset>"