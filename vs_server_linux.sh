#!/bin/bash
#
RELEASE_TYPE="stable"
VERSION="1.18.13"
DIRECTORY="vs_server_linux"

wget "https://cdn.vintagestory.at/gamefiles/${RELEASE_TYPE}/vs_server_linux-x64_${VERSION}.tar.gz"
tar xzf "vs_server_linux-x64_${VERSION}.tar.gz" -C $HOME/$DIRECTORY
rm "vs_server_linux-x64_${VERSION}.tar.gz"
