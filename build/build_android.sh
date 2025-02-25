#!/bin/bash

set -e

export CHROMIUM=133.0.6943.98

echo "Build cronet v$CHROMIUM"

mkdir -p output
rm -rf output/*
cd output

echo "pwd"
echo $(pwd)

# git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git
# export PATH="$(pwd)/depot_tools:$PATH"

mkdir ~/chromium && cd ~/chromium
fetch --nohooks --no-history chromium

# git clone -b $CHROMIUM --depth=2 https://chromium.googlesource.com/chromium/src

echo "directory"
ls -l

# gclient config "https://chromium.googlesource.com/chromium/src.git"
# echo 'target_os = ["android"]' >> .gclient

# echo "start gclient"
# gclient sync --no-history --nohooks

# echo 'solutions = [
#       {
#         "name": "src",
#         "url": "https://chromium.googlesource.com/chromium/src.git",
#         "managed": False,
#         "custom_deps": {},
#         "custom_vars": {},
#       },
# ]
# target_os=["android"]' > .gclient

# cd src

echo "install dependencies"

# ./build/install-build-deps.sh

echo "execute gn"

# ./components/cronet/tools/cr_cronet.py gn
