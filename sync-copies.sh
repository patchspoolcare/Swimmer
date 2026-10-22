#!/bin/sh
# Copies the app into each extra business folder listed in copies.txt, so every
# business runs the same version of Swimmer. Each folder keeps its own config.js.
# Run this after every change to the main app, then commit.
set -e
cd "$(dirname "$0")"
[ -f copies.txt ] || exit 0
for slug in $(grep -v '^#' copies.txt); do
  [ -n "$slug" ] || continue
  mkdir -p "$slug/icons"
  cp index.html manifest.webmanifest "$slug/"
  cp icons/* "$slug/icons/"
  sed "s/const CACHE = \"swimmer-v/const CACHE = \"swimmer-$slug-v/" sw.js > "$slug/sw.js"
  [ -f "$slug/config.js" ] || echo "WARNING: $slug/config.js is missing"
  echo "synced $slug"
done
