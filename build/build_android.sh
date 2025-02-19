#!/bin/bash

set -e

export CHROMIUM=133.0.6943.98

echo "Build cronet v$CHROMIUM"

mkdir -p output
rm -rf output/*
cd output

git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH="$(pwd)/depot_tools:$PATH"
git clone -b $CHROMIUM --depth=2 https://chromium.googlesource.com/chromium/src

echo 'solutions = [
      {
        "name": "src",
        "url": "https://chromium.googlesource.com/chromium/src.git",
        "managed": False,
        "custom_deps": {},
        "custom_vars": {},
      },
]
target_os=["android"]' > .gclient

cat .gclient

gclient sync --no-history --nohooks
