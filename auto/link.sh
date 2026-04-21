#!/usr/bin/env bash

# === PURPOSE ===

# link this package/template to typst system, so it can be included

# === SETTINGS ===

# this directory will be linked
GIT_ROOT_DIR="typst"
# typst-specific, to prevent clashes
NAMESPACE="local"

PACKAGE_NAME="fasthesis"
VERSION="0.1.0"

# === CODE ===

set -e

# we are here - in auto/ directory now!
cd "$(dirname "${BASH_SOURCE[0]}")"
# we go one higher than is typst/ dir
cd ../..

SOURCE="$(realpath $GIT_ROOT_DIR)"
PARENT="${XDG_DATA_HOME:-$HOME/.local/share}"
TARGET="$PARENT/typst/packages/$NAMESPACE/$PACKAGE_NAME/$VERSION"

# ensure path
mkdir -p "$(dirname "$TARGET")"
# don't fail on "already exist"
rm "$TARGET"
# symlink
ln -s "$SOURCE" "$TARGET" 

