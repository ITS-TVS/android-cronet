#!/bin/bash

set -e

echo "Hello Build!"

export CHROMIUM=133.0.6943.98

mkdir -p output
rm -rf output/*
cd output

git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH="$(pwd)/depot_tools:$PATH"
git clone -b $CHROMIUM --depth=2 https://chromium.googlesource.com/chromium/src
