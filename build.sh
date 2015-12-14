#!/bin/bash

# Switch to ncregrid directory
cd "$SRC_DIR/ncregrid"
# Build ncregrid
make all install

# Copy executable to prefix/bin/
mkdir -p "$PREFIX/bin"
cp "$SRC_DIR/ncregrid/bin/ncregrid" "$PREFIX/bin/ncregrid"
# Make sure the binary is executable
chmod +x "$PREFIX/bin/ncregrid"
