all: checkmakefiles
	cd src && $(MAKE)

clean: checkmakefiles
	cd src && $(MAKE) clean

cleanall: checkmakefiles
	cd src && $(MAKE) MODE=release clean
	cd src && $(MAKE) MODE=debug clean
	rm -f src/Makefile

makefiles:
	cd src && opp_makemake -f --deep -o swim -I. -I../libs/boost_1_80_0 -I../libs/include -Imodel/pladaptMock -I../../queueinglib -L../libs/boost_1_80_0/stage/lib -L../../queueinglib/ -lqueueinglib -lboost_serialization -lboost_system -lboost_filesystem -lpthread
												
checkmakefiles:
	@if [ ! -f src/Makefile ]; then \
	echo; \
	echo '======================================================================='; \
	echo 'src/Makefile does not exist. Please use "make makefiles" to generate it!'; \
	echo '======================================================================='; \
	echo; \
	exit 1; \
	fi
