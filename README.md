# ncregrid
A tool for rediscretisation of geo-data

This is just a mirror of the original source from http://www.pa.op.dlr.de/~PatrickJoeckel/ncregrid/ncregrid.tar.Z

The Makefile has been changed slightly to provide a binary that is statically linked to some Fortran libraries but still dynamically linked to `libnetcdf`.

To build on Fedora 22, make sure you have `netcdf-fortran-static` and `libgfortran-static` installed.
