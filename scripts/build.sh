#!/bin/bash
mkdir -p dist

electron-packager src TVGuide --platform=darwin --arch=x64 --electron-version=1.6.2 --out dist/ --overwrite
# electron-packager src TVGuide --platform=all --arch=all --electron-version=1.6.2 --out dist/ --overwrite

