#!/usr/bin/env bash

set -e

BUILD_DIR="_build"

if [ -e "$BUILD_DIR" ]; then
    rm -r "$BUILD_DIR"
fi
mkdir -p "$BUILD_DIR"
_venv/bin/sphinx-build -n -E -W . "$BUILD_DIR"

