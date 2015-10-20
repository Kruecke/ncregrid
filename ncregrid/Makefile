# ----------------------------------------------
export
SHELL     = sh

F90       = f95
F90FLAGS  = -cpp
LIBS      = -static-libgfortran -Wl,-Bstatic -lnetcdff -Wl,-Bdynamic -lnetcdf
INCLUDES  = -I/usr/lib64/gfortran/modules

# ----------------------------------------------

srcdir     = ./src
bindir     = ./bin
includedir = ./include
PROG       = ncregrid

# ----------------------------------------------

all:
	cd $(srcdir) ; \
	$(MAKE)

install:
	if test ! -d $(bindir) ; then mkdir $(bindir) ; fi
	cp -f $(srcdir)/$(PROG) $(bindir)/.
	if test ! -d $(includedir) ; then mkdir $(includedir) ; fi
	cp -f $(srcdir)/*.mod $(includedir)/.

clean:
	rm -f $(srcdir)/*.o $(srcdir)/*~ $(srcdir)/*.mod $(srcdir)/$(PROG)

distclean: clean
	rm -fr $(bindir) $(includedir) ./config.log ./config.status ./Makefile

# ----------------------------------------------
