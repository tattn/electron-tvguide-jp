#!/bin/bash
mkdir -p dist

electron-packager src TVGuide --platform=all --arch=all --electron-version=1.6.2 --out dist/ --overwrite

mkdir -p dist/releases

pushd dist
for file in	*; do
	if [ ${file} = "releases" ]; then
		continue
	fi
	echo "${file}"
	zip -r releases/${file}.zip ${file}
done
popd
