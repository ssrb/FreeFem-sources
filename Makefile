# Makefile.in generated by automake 1.6.3 from Makefile.am.
# Makefile.  Generated from Makefile.in by configure.

# Copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002
# Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



# Makefile for FreeFem++, adapted to Automake
# -------------------------------------------

# Antoine Le Hyaric - LJLL Paris 6 - lehyaric@ann.jussieu.fr - 13/5/04
# $Id$
SHELL = /bin/sh

srcdir = .
top_srcdir = .
prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
mandir = ${prefix}/man
oldincludedir = /usr/include
pkgdatadir = $(datadir)/freefem--
pkglibdir = $(libdir)/freefem--
pkgincludedir = $(includedir)/freefem--
top_builddir = .

ACLOCAL = ${SHELL} /home/lehyaric/freefem++/autoconf/missing --run aclocal-1.6
AUTOCONF = ${SHELL} /home/lehyaric/freefem++/autoconf/missing --run autoconf
AUTOMAKE = ${SHELL} /home/lehyaric/freefem++/autoconf/missing --run automake-1.6
AUTOHEADER = ${SHELL} /home/lehyaric/freefem++/autoconf/missing --run autoheader

am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_SCRIPT = ${INSTALL}
INSTALL_HEADER = $(INSTALL_DATA)
transform = s,x,x,
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :

EXEEXT = 
OBJEXT = o
PATH_SEPARATOR = :

VPATH = $(src) $(src)/femlib $(src)/bamglib $(src)/Graphics $(src)/mpi \
	$(src)/Algo $(src)/Eigen

includedir = -I$(INCLUDEX11)    -I$(src) -I$(src)/femlib -I$(src)/bamglib \
	-I$(src)/Graphics -I$(src)/mpi -I$(src)/Algo $(IUMFPACK)

AMTAR = ${SHELL} /home/lehyaric/freefem++/autoconf/missing --run tar
AWK = gawk
CXX = g++
DEPDIR = .deps
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
LEX = flex
LEXLIB = -lfl
LEX_OUTPUT_ROOT = lex.yy
PACKAGE = freefem--
STRIP = 

# The version number is specified in configure.ac
VERSION = 1.41
YACC = bison -y
am__include = include
am__quote = 
install_sh = /home/lehyaric/freefem++/autoconf/install-sh

# Object files for different architectures are located in separate
# directories.
COMPILE_DIR = c-i686-pc-linux-gnu

# ------------------------------
# compilation flags of FreeFem++ 
# ------------------------------
#  -DDRAWING  bamg active some drawing facility in bamg (inquire mesh)
#  -DLONG_LONG active the use of  long long in bamg
#  -DDEBUG active the  checking in bamg  
#  -DNCHECKPTR remove check pointer facility 
#  -DCHECK_KN active subscripting of some array  
#  -DWITHCHECK of the dynamic type ckecking of the langague (very slow)
#  -DEIGENVALUE  to compile the eigen value part
#  ------------------------------------------------
# FLAGS for optimisated version 
OFFFLAGS = -DDRAWING -DLONG_LONG  -DNCHECKPTR 
#  flags for debug version  
GFFFLAGS = -DDRAWING -DLONG_LONG -DCHECK_KN #-DWITHCHECK

LIBLOCAL = -ldl   # for dlopen (see load.cpp)
LIBX11 = -L/usr/X11R6/lib -lX11 -lm 
INCLUDEX11 = /usr/X11R6/include
CXXMPI = mpiCC   # compilation with mpi
OOPTFLAGS = -O  # compilation with optimisation
GOPTFLAGS = -g  # compilation with debugging 
LIBGLX = $(LIBX11) -lGL -lGLU
#--------------------------------------------------
#  the flag of eigen value part with arpack++ tools
#-------------------------------------------------
EIGEN = eigenvalue.o
LIBARPACK = -larpack -llapack -lblas -rdynamic
LIBF77 = -lg2c
INCARPACKPP = -DEIGENVALUE -I../arpack/arpack++/include
#------------------------------------------------
#  UMFPACK
#-----------------------
UMFPACKDIR = $(src)/../../LinearSolver/UMFPACKv4.1
IUMFPACK = -DUMFPACK -I/usr/include/umfpack -I/usr/include/amd 
LIBUMFPACK = -lumfpack -lamd  $(LIBBLAS)

BIN_DIR = /opt/bin

# -----  not change after this line ------------
TARGETS = FreeFem++ FreeFem++-x11 FreeFem++-mpi  FreeFem++-nw FreeFem++-glx
# --------------------
src = ./src

CXXFLAGS = $(OPTFLAGS)  $(FFFLAGS) $(includedir)  $(INCARPACKPP)
CXXMPIFLAGS = $(CXXFLAGS) $(MPIFLAGS) -DPARALLELE $(INCARPACKPP)
www = rascasse.inria.fr:www_gamma/Gamma/cdrom/ftp/freefem/
ftp = rascasse.inria.fr:/ftp_gamma/freefem/
ftpk = baobab.ann.jussieu.fr:public_html/ftp/freefem/
OBJETS = $(EIGEN) AFunction.o   lex.o  lgfem.o  lgmesh.o \
 Drawing.o    \
 gibbs.o CheckPtr.o fem.o QuadratureFormular.o FESpace.o \
 Element_RT.o mshptg.o FQuadTree.o \
 QuadTree.o R2.o Meshio.o Mesh2.o Metric.o \
 BamgFreeFem.o MeshDraw.o MeshGeom.o MeshQuad.o SetOfE4.o \
 MeshRead.o MeshWrite.o problem.o strversionnumber.o InitFunct.o \
 lgalgo.o Element_P2h.o load.o


LIBS = $(LIBUMFPACK) $(LIBARPACK) $(LIBF77)  $(LIBLOCAL)  -lblas

SUFFIXES = .cpp .o
subdir = .
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = config.h
CONFIG_CLEAN_FILES =
DIST_SOURCES =
DIST_COMMON = README AUTHORS COPYING ChangeLog INSTALL Makefile.am \
	Makefile.in NEWS TODO aclocal.m4 config.guess config.h.in \
	config.sub configure configure.ac install-sh missing \
	mkinstalldirs
all: config.h
	$(MAKE) $(AM_MAKEFLAGS) all-am

.SUFFIXES:
.SUFFIXES: .cpp .o

am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno
$(srcdir)/Makefile.in:  Makefile.am  $(top_srcdir)/configure.ac $(ACLOCAL_M4)
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --gnu  Makefile
Makefile:  $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe)

$(top_builddir)/config.status: $(srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck
$(srcdir)/configure:  $(srcdir)/configure.ac $(ACLOCAL_M4) $(CONFIGURE_DEPENDENCIES)
	cd $(srcdir) && $(AUTOCONF)

$(ACLOCAL_M4):  configure.ac 
	cd $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)

config.h: stamp-h1
	@if test ! -f $@; then \
	  rm -f stamp-h1; \
	  $(MAKE) stamp-h1; \
	else :; fi

stamp-h1: $(srcdir)/config.h.in $(top_builddir)/config.status
	@rm -f stamp-h1
	cd $(top_builddir) && $(SHELL) ./config.status config.h

$(srcdir)/config.h.in:  $(top_srcdir)/configure.ac $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOHEADER)
	touch $(srcdir)/config.h.in

distclean-hdr:
	-rm -f config.h stamp-h1
uninstall-info-am:
tags: TAGS
TAGS:

DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)

top_distdir = .
distdir = $(PACKAGE)-$(VERSION)

am__remove_distdir = \
  { test ! -d $(distdir) \
    || { find $(distdir) -type d ! -perm -200 -exec chmod u+w {} ';' \
         && rm -fr $(distdir); }; }

GZIP_ENV = --best
distcleancheck_listfiles = find . -type f -print

distdir: $(DISTFILES)
	$(am__remove_distdir)
	mkdir $(distdir)
	@list='$(DISTFILES)'; for file in $$list; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	  if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	    dir="/$$dir"; \
	    $(mkinstalldirs) "$(distdir)$$dir"; \
	  else \
	    dir=''; \
	  fi; \
	  if test -d $$d/$$file; then \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -pR $(srcdir)/$$file $(distdir)$$dir || exit 1; \
	    fi; \
	    cp -pR $$d/$$file $(distdir)$$dir || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
	-find $(distdir) -type d ! -perm -777 -exec chmod a+rwx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(SHELL) $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r $(distdir)
dist-gzip: distdir
	$(AMTAR) chof - $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

dist dist-all: distdir
	$(AMTAR) chof - $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	$(am__remove_distdir)
	GZIP=$(GZIP_ENV) gunzip -c $(distdir).tar.gz | $(AMTAR) xf -
	chmod -R a-w $(distdir); chmod a+w $(distdir)
	mkdir $(distdir)/=build
	mkdir $(distdir)/=inst
	chmod a-w $(distdir)
	dc_install_base=`$(am__cd) $(distdir)/=inst && pwd` \
	  && cd $(distdir)/=build \
	  && ../configure --srcdir=.. --prefix=$$dc_install_base \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && (test `find $$dc_install_base -type f -print | wc -l` -le 1 \
	      || { echo "ERROR: files left after uninstall:" ; \
	           find $$dc_install_base -type f -print ; \
	           exit 1; } >&2 ) \
	  && $(MAKE) $(AM_MAKEFLAGS) dist-gzip \
	  && rm -f $(distdir).tar.gz \
	  && $(MAKE) $(AM_MAKEFLAGS) distcleancheck
	$(am__remove_distdir)
	@echo "$(distdir).tar.gz is ready for distribution" | \
	  sed 'h;s/./=/g;p;x;p;x'
distcleancheck: distclean
	if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
check: check-am
all-am: Makefile config.h all-local

installdirs:
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  INSTALL_STRIP_FLAG=-s \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-generic mostlyclean-am

distclean: distclean-am
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
distclean-am: clean-am distclean-generic distclean-hdr

dvi: dvi-am

dvi-am:

info: info-am

info-am:

install-data-am:

install-exec-am:

install-info: install-info-am

install-man:

installcheck-am:

maintainer-clean: maintainer-clean-am
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf autom4te.cache
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic

uninstall-am: uninstall-info-am

.PHONY: all all-am all-local check check-am clean clean-generic dist \
	dist-all dist-gzip distcheck distclean distclean-generic \
	distclean-hdr distcleancheck distdir dvi dvi-am info info-am \
	install install-am install-data install-data-am install-exec \
	install-exec-am install-info install-info-am install-man \
	install-strip installcheck installcheck-am installdirs \
	maintainer-clean maintainer-clean-generic mostlyclean \
	mostlyclean-generic uninstall uninstall-am uninstall-info-am


# All the versions of FreeFem++ to compile when "make" is invoked
all-local:: $(src)/versionnumber.hpp \
	std std-g glx glx-g x11 x11-g $(BUILD_COCOA) mpi mpi-g

std: $(COMPILE_DIR) FORCE 
	$(MAKE) -C $(COMPILE_DIR) allc -f`pwd`/Makefile OPTFLAGS="$(OOPTFLAGS)" FFFLAGS="$(OFFFLAGS)" src=`pwd`/src
std-g: $(COMPILE_DIR)-g FORCE 
	$(MAKE) -C $(COMPILE_DIR)-g allc -f`pwd`/Makefile OPTFLAGS="$(GOPTFLAGS)" FFFLAGS="$(GFFFLAGS)" src=`pwd`/src

$(COMPILE_DIR):
	-mkdir $@
$(COMPILE_DIR)-g:
	-mkdir $@

allc:  FreeFem++ FreeFem++-nw 

mpi: $(COMPILE_DIR) FORCE
	$(MAKE) -C $(COMPILE_DIR) FreeFem++-mpi -f`pwd`/Makefile OPTFLAGS="$(OOPTFLAGS)" FFFLAGS="$(OFFFLAGS)" src=`pwd`/src
mpi-g: $(COMPILE_DIR)-g FORCE
	$(MAKE) -C $(COMPILE_DIR)-g FreeFem++-mpi -f`pwd`/Makefile OPTFLAGS="$(GOPTFLAGS)" FFFLAGS="$(GFFFLAGS)" src=`pwd`/src

agl: $(COMPILE_DIR)-g FORCE
	$(MAKE) -C $(COMPILE_DIR) FreeFem++-agl -f`pwd`/Makefile OPTFLAGS="$(OOPTFLAGS)" FFFLAGS="$(OFFFLAGS)" src=`pwd`/src
agl-g:$(COMPILE_DIR)-g FORCE
	$(MAKE) -C $(COMPILE_DIR)-g FreeFem++-agl -f`pwd`/Makefile OPTFLAGS="$(GOPTFLAGS)" FFFLAGS="$(GFFFLAGS)" src=`pwd`/src
glx-g:$(COMPILE_DIR)-g FORCE
	$(MAKE) -C $(COMPILE_DIR)-g FreeFem++-glx -f`pwd`/Makefile OPTFLAGS="$(GOPTFLAGS)" FFFLAGS="$(GFFFLAGS)" src=`pwd`/src
glx:$(COMPILE_DIR) FORCE
	$(MAKE) -C $(COMPILE_DIR) FreeFem++-glx -f`pwd`/Makefile OPTFLAGS="$(OOPTFLAGS)" FFFLAGS="$(OFFFLAGS)" src=`pwd`/src
x11-g:$(COMPILE_DIR)-g FORCE
	$(MAKE) -C $(COMPILE_DIR)-g FreeFem++-x11 -f`pwd`/Makefile OPTFLAGS="$(GOPTFLAGS)" FFFLAGS="$(GFFFLAGS)" src=`pwd`/src
x11:$(COMPILE_DIR) FORCE
	$(MAKE) -C $(COMPILE_DIR) FreeFem++-x11 -f`pwd`/Makefile OPTFLAGS="$(OOPTFLAGS)" FFFLAGS="$(OFFFLAGS)" src=`pwd`/src

allex:examples++-tutorial/all.edp examples++/all.edp examples++-eigen/all.edp

yy:$(src)/lg.tab.hpp  $(src)/lg.tab.cpp $(src)/versionnumber.hpp
	echo ""
manuals:FORCE
	cd DOC; make all
FreeFem++:%: lg.tab.o   $(OBJETS) Xrgraph.o
	$(CXX) $(CXXFLAGS) $<  -o $@   $(OBJETS) Xrgraph.o $(LIBX11) $(LIBS)
FreeFem++-nw:%: lg.tab.o   $(OBJETS) sansrgraph.o
	$(CXX) $(CXXFLAGS) $<  -o $@   $(OBJETS)  sansrgraph.o $(LIBS)
FreeFem++-mpi: lg.tab.cpp  parallelempi.cpp $(OBJETS) sansrgraph.o  
	$(CXXMPI) $(CXXMPIFLAGS)   $(src)/lg.tab.cpp  $(src)/mpi/parallelempi.cpp  -o $@   $(OBJETS)  sansrgraph.o $(LIBS) $(MPILIBS)
FreeFem++-agl: lg.tab.cpp  macglrgraf.cpp  $(OBJETS) macglrgraf.o  
	$(CXX) $(CXXFLAGS)   $(src)/lg.tab.cpp  -o $@   $(OBJETS)   macglrgraf.o $(LIBGL) $(LIBS)
FreeFem++-glx: lg.tab.cpp  xglrgraf.cpp  $(OBJETS) xglrgraf.o  
	$(CXX) $(CXXFLAGS)   $(src)/lg.tab.cpp  -o $@   $(OBJETS)   xglrgraf.o $(LIBGLX) $(LIBS)

FreeFem++-x11:%: lg.tab.o   $(OBJETS) Xrgraph.o
	$(CXX) $(CXXFLAGS) $<  -o $@   $(OBJETS) Xrgraph.o $(LIBX11) $(LIBS)
%.o : %.c

clean: 
	-rm *.o  #* core
	-rm lg.*
	-find . \( -name '*~' -or  -name ListOfUnAllocPtr.bin \) |xargs rm 
	-rm examples*/*.eps 
$(src)/lg.tab.hpp  $(src)/lg.tab.cpp: lg.y
	-rm $(src)/lg.tab.hpp  $(src)/lg.tab.cpp lg.tab.cpp.h
	bison -dtv -p lg  $< -o lg.tab.cpp
	-mv lg.tab.cpp.h  lg.tab.hpp # pour un  pb entre des versions de bison 
	mv lg.tab.[hc]pp $(src)  
.cpp.o:
	$(CXX)  -c $(CXXFLAGS) $< 
$(src)/versionnumber.hpp: FORCE
	(echo "#define VersionFreeFempp " '$(VERSION)';echo "#define VersionFreeFemDate " '"'`date`'"') >$@
versions:manuals  allex FreeFem++v$(VERSION).tar.gz FreeFem++v$(VERSION)_Win.zip FreeFem++v$(VERSION)_MacOS FreeFem++v$(VERSION)_MacOsX.tgz
	echo "done"
tgz: FreeFem++v$(VERSION).tar.gz 
	echo "done"
clean-version:
	-rm FreeFem++v$(VERSION).tar FreeFem++v$(VERSION).tar.gz 
	-rm -rf FreeFem++v*_MacOS
	-rm -rf FreeFem++v*_Win
FreeFem++v$(VERSION).tar:  FORCE
	mkdir FreeFem++v$(VERSION)
	(                                                             \
	echo COPYRIGHT HISTORY BUGS  Makefile* README README_CW README_ARPACK TODO *.mcp.*             ; \
	echo src/Makefile-* src/FreeFem++-CoCoa; \
	find src -type f -name '*pp' -o -name '*.[yhr]'             ; \
	echo DOC/plots/*.eps DOC/Makefile DOC/*sty DOC/*.tex  DOC/manual.ps.gz DOC/manual.pdf   ; \
	echo FreeFem++.*mcp.sit   ffpc*mcp.zip ;\
        find FreeFem++.app -type f|egrep -v '.DS_Store|Resources/FreeFem++'; \
	echo examples++/*.edp                                       ; \
	echo examples++-tutorial/aile.msh examples++-tutorial/xyf  examples++-tutorial/*.edp ; \
	echo examples++-eigen/*.edp                                   ; \
	echo examples++-bug/*.edp                                   ; \
	echo examples++-mpi/*.edp                                   ; \
	echo examples++-load/*.edp examples++-load/*pp examples++-load/*.link ; \
	echo arpack/arpack++/include ; \
	) | xargs tar cf - | (cd FreeFem++v$(VERSION); tar xf -)
	tar cvf $@ FreeFem++v$(VERSION)
	rm -rf FreeFem++v$(VERSION)
%.gz:%
	gzip -9f $*

FreeFem++v$(VERSION)_Win:pc/FreeFem++.exe FORCE
	-mkdir $@  $@/examples++ $@/examples++-tutorial $@/examples++-bug $@/examples++-eigen
	cp  pc/FreeFem++.exe $@
	cp COPYRIGHT HISTORY README BUGS TODO  $@ 
	cp  examples++/*.edp   $@/examples++
	cp  examples++-eigen/*.edp   $@/examples++-eigen
	cp  examples++-tutorial/aile.msh examples++-tutorial/xyf examples++-tutorial/*.edp   $@/examples++-tutorial
	-cp  examples++-bug/*.edp   $@/examples++-bug
	cp  DOC/manual.ps.gz DOC/manual.pdf $@
zip:FreeFem++v$(VERSION)_Win.zip

FreeFem++v$(VERSION)_Win.zip:FreeFem++v$(VERSION)_Win
	-rm FreeFem++v$(VERSION)_Win.zip
	zip -9l FreeFem++v$(VERSION)_Win.zip `find FreeFem++v$(VERSION)_Win -type f | egrep -v 'exe$$|pdf$$|gz$$'`
	zip -9 FreeFem++v$(VERSION)_Win.zip `find FreeFem++v$(VERSION)_Win -type f | egrep  'exe$$|pdf$$|gz$$'`
FreeFem++v$(VERSION)_MacOS: FORCE
	-mkdir $@  $@/examples++ $@/examples++-tutorial $@/examples++-bug $@/examples++-eigen
	/Developer/Tools/CpMac FreeFem++ $@ 
	cp  COPYRIGHT HISTORY README BUGS TODO  $@ 
	cp  examples++/*.edp   $@/examples++
	cp  examples++-eigen/*.edp   $@/examples++-eigen
	cp  examples++-tutorial/aile.msh examples++-tutorial/xyf  examples++-tutorial/*.edp   $@/examples++-tutorial
	-cp  examples++-bug/*.edp   $@/examples++-bug
	cp  DOC/manual.ps.gz DOC/manual.pdf $@

FreeFem++v$(VERSION)_MacOsX: FORCE
	-mkdir $@  $@/examples++ $@/examples++-tutorial $@/examples++-bug $@/examples++-eigen $@/examples++-load
	cp COPYRIGHT HISTORY README BUGS TODO INSTALL-MacOSX  $@
	cp  examples++/*.edp   $@/examples++
	cp  examples++-tutorial/aile.msh examples++-tutorial/xyf  examples++-tutorial/*.edp   $@/examples++-tutorial
	cp  examples++-eigen/*.edp   $@/examples++-eigen
	-cp  examples++-bug/*.edp   $@/examples++-bug
	cp  DOC/manual.ps.gz DOC/manual.pdf $@
	cp -r FreeFem++.app FreeFem++v$(VERSION)_MacOsX/FreeFem++.app
	cp script/FreeFem++-CoCoa $@

FreeFem++v$(VERSION)_MacOsX.tgz: FreeFem++v$(VERSION)_MacOsX
	tar zcvf FreeFem++v$(VERSION)_MacOsX.tgz FreeFem++v$(VERSION)_MacOsX;

tyty: $(src)/. $(src)/*/. 
	egrep '^# *include' src/*/*.h src/*/*.hpp src/*.hpp src/*/*.cpp src/*.cpp | grep -v alloca.h| grep '"' \
	    | awk -F'[:"]' ' \
	/.hpp:#/ { nn=split($$1,bbb,"[/]");c=bbb[nn];d=$$(NF-1); l[c] = l[c] " " d  ;} \
	/.h:#/ { nn=split($$1,bbb,"[/]");c=bbb[nn];d=$$(NF-1); l[c] = l[c] " " d  ;} \
	/.cpp:#/  {nn=split($$1,bbb,"[/.]");c=bbb[nn-1];d=$$(NF-1);print c ".o:" d,l[d] }' 

%/all.edp:% FORCE 
	(cd $*; echo "NoUseOfWait=true;int verbosityy=verbosity;"; \
         for i in *`ls *.edp|grep -v ^all.edp$$` ; do  \
	echo ' cout << "--------- file : '$$i' --------------------------------------------------------" << endl;' ;\
	echo "verbosity=verbosityy;" ; \
        echo \{ include \"$$i\"\;\}\; ;\
	echo ' cout << "------------------------------------------------------------------------------ " << endl;' ;\
	done) > $@
lex.o: lg.tab.hpp
lg.tab.o:lg.tab.hpp 

www:  FreeFem++v$(VERSION)_Win.zip  FreeFem++v$(VERSION)_MacOS.sit FreeFem++v$(VERSION)_MacOsX.tgz
	scp  HISTORY DOC/manual.pdf DOC/manual.ps.gz FreeFem++v$(VERSION).tar.gz FreeFem++v$(VERSION)_MacOsX.tgz FreeFem++v$(VERSION)_Win.zip  FreeFem++v$(VERSION)_MacOS.sit  $(ftpk)
	ssh  baobab.ann.jussieu.fr "cd www/ftp/freefem;ln -sf FreeFem++v$(VERSION)_Win.zip  freefem++.zip"
	ssh  baobab.ann.jussieu.fr "cd www/ftp/freefem;ln -sf FreeFem++v$(VERSION)_MacOS.sit freefem++.sit"
	ssh  baobab.ann.jussieu.fr "cd www/ftp/freefem;ln -sf FreeFem++v$(VERSION).tar.gz freefem++.tar.gz"
	ssh  baobab.ann.jussieu.fr "cd www/ftp/freefem;ln -sf FreeFem++v$(VERSION).tar.gz freefem++.tgz"
	ssh  baobab.ann.jussieu.fr "cd www/ftp/freefem;ln -sf FreeFem++v$(VERSION)_MacOsX.tgz freefem++_MacOsX.tgz"
	scp  HISTORY  baobab.ann.jussieu.fr:www/.
	ssh  baobab.ann.jussieu.fr "cd www/.; ./.update++ $(VERSION) <ff++.htmx >freefem++.htm"
	scp  HISTORY DOC/manual.pdf DOC/manual.ps.gz FreeFem++v$(VERSION).tar.gz FreeFem++v$(VERSION)_MacOsX.tgz FreeFem++v$(VERSION)_Win.zip  FreeFem++v$(VERSION)_MacOS.sit  $(ftp)
	scp HISTORY DOC/manual.pdf DOC/manual.ps.gz  $(www)
	scp FreeFem++v$(VERSION)_Win.zip $(www)/freefem++.zip
	scp FreeFem++v$(VERSION).tar.gz $(www)/freefem++.tar.gz
	scp FreeFem++v$(VERSION)_MacOS.sit $(www)/freefem++.sit
	ssh rascasse.inria.fr "cd /ftp_gamma/freefem;ln -sf FreeFem++v$(VERSION)_Win.zip  freefem++.zip"
	ssh rascasse.inria.fr "cd /ftp_gamma/freefem;ln -sf FreeFem++v$(VERSION)_MacOS.sit freefem++.sit"
	ssh rascasse.inria.fr "cd /ftp_gamma/freefem;ln -sf FreeFem++v$(VERSION).tar.gz freefem++.tar.gz"
	ssh rascasse.inria.fr "cd /ftp_gamma/freefem;ln -sf FreeFem++v$(VERSION).tar.gz freefem++.tgz"
	ssh rascasse.inria.fr "cd /ftp_gamma/freefem;ln -sf FreeFem++v$(VERSION)_MacOsX.tgz freefem++_MacOsX.tgz"
	ssh rascasse.inria.fr "cd ~/public_html/; ./.update++ $(VERSION) <ff++.htmx >freefem++.htm"
Makefile-$(HOSTTYPE):
	echo " ------------------------------------ " ; \
	echo "Sorry the the $(src)/Makefile-$HOSTYPE do not exist" ;\
	echo "You can build  this file from existing  file :  $(src)/Makefile-macintosh" ;\
	echo " ------------------------------------ " 

install:   $(BIN_DIR)/.
	   @for i in $(TARGETS) ; do \
	     if [ -f $(COMPILE_DIR)/$$i ] ; then \
		cp  $(COMPILE_DIR)/$$i  $(BIN_DIR)/$$i; \
		chmod 755 $(BIN_DIR)/$$i; \
	     	echo " Install $(BIN_DIR)/$$i"  ; fi; \
	     if [ -f $(COMPILE_DIR)-g/$$i ] ; then \
		cp  $(COMPILE_DIR)-g/$$i $(BIN_DIR)/$$i-g ;\
		chmod 755 $(BIN_DIR)/$$i; \
		echo " Install $(BIN_DIR)/$$i-g"  ; fi; \
	   done; \
           if [ \( -f $(COMPILE_DIR)/FreeFem++-agl \) -a \( -n "$(BUILD_COCOA)"  \)  ] ; then \
		echo " Install $(BIN_DIR)/../FreeFem++.app/Contents/MacOS/FreeFem++"; \
		cp $(COMPILE_DIR)/FreeFem++-agl $(BIN_DIR)/../FreeFem++.app/Contents/MacOS/FreeFem++ ;\
		echo " Install FreeFem++.app/Resources/MacOS/FreeFem++-agl"; \
		cp $(COMPILE_DIR)/FreeFem++-agl ./FreeFem++.app/Contents/Resources/FreeFem++ ;\
                echo Install /Applications/FreeFem++.app; \
                (tar cf - FreeFem++.app| (cd /Applications;tar xf -)) ;\
                echo Install FreeFem++-CoCoa; \
                cp src/FreeFem++-CoCoa  $(BIN_DIR);\
	   fi ;
	echo "End of Installation "

get-arpack:
	-mkdir ../arpack;
	cd ../arpack; \
	wget  http://www.caam.rice.edu/software/ARPACK/SRC/arpack96.tar.gz ;\
	wget  http://www.caam.rice.edu/software/ARPACK/SRC/patch.tar.gz  ;\
	wget  http://www.caam.rice.edu/software/ARPACK/ARPACK++/arpack++.tar.gz ; \
	gunzip -c arpack96.tar.gz | tar xvf - ;\
	gunzip -c patch.tar.gz | tar xvf - ;\
	gunzip -c arpack++.tar.gz| tar xvf - 
FORCE:
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
