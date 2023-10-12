#!/bin/sh
set -x
# Remove old build dir
if [ -d build.tmp ]; then 
	mv build.tmp build-$(date +%s).tmp
fi
mkdir build.tmp
cp -r src/img build.tmp/
pandoc -t revealjs --standalone src/slideshow.md src/reveal.yml -o build.tmp/index.html
exit 0
