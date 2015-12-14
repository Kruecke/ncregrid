#!/bin/bash

# Install dependency from another channel
conda install -c https://conda.anaconda.org/nesii/channel/esmf f90netcdf

# Switch to ncregrid directory
cd "$SRC_DIR/ncregrid"
# Build ncregrid
make all install

# Copy executable to prefix/bin/
mkdir -p "$PREFIX/bin"
cp "$SRC_DIR/ncregrid/bin/ncregrid" "$PREFIX/bin/ncregrid"
# Make sure the binary is executable
chmod +x "$PREFIX/bin/ncregrid"
