#!/bin/bash

# Download netcdf fortran release
cd "$SRC_DIR"
wget ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-fortran-4.4.2.tar.gz
tar -xzf netcdf-fortran-4.4.2.tar.gz
# Build and install netcdf for fortran
cd netcdf-fortran-4.4.2
./configure --prefix="$PREFIX"
make
make install

# Switch to ncregrid directory
cd "$SRC_DIR/ncregrid"
# Build ncregrid
make all install

# Copy executable to prefix/bin/
mkdir -p "$PREFIX/bin"
cp "$SRC_DIR/ncregrid/bin/ncregrid" "$PREFIX/bin/ncregrid"
# Make sure the binary is executable
chmod +x "$PREFIX/bin/ncregrid"
