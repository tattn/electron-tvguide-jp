#!/bin/bash
mkdir -p dist

# electron-packager src TVGuide --platform=all --arch=all --electron-version=1.6.2 --out dist/ --overwrite

mkdir -p dist/releases
rm -rf dist/releases/*

pushd dist > /dev/null
for file in	*; do
	if [ ${file} = "releases" ]; then
		continue
	fi
	echo "${file}"
	echo "releases/${file}.zip"
	zip -r releases/${file}.zip ${file}
done
popd > /dev/null
