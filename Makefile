MAKEFILES=$(shell find . -name 'Makefile' -depth 2)
SLIDES=$(MAKEFILES:/Makefile=)
all:$(SLIDES)
%:
	make -C $<
	