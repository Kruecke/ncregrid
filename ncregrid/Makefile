# ----------------------------------------------
export
SHELL     = sh

F90       = lf95
F90FLAGS  = -Cpp
LIBS      = -L/soft/netcdf/v3.6.0b6_lf/lib -lnetcdf
INCLUDES  = -I/soft/netcdf/v3.6.0b6_lf/include

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
