MAKEFILES=$(shell find . -name 'Makefile' -depth 2)
SLIDES=$(MAKEFILES:/Makefile=)
all:
	rm -R -f out
	git clone --branch gh-pages git@github.com:layerssss/myslides.git out
	rm -R -f out/*
	make $(SLIDES) --always-make
	git --git-dir out/.git --work-tree out/ add --all
	git --git-dir out/.git --work-tree out/ commit -m 'published by mic'
	git --git-dir out/.git --work-tree out/ push origin gh-pages
	rm -R -f out/*

%:%/Makefile
	make -C $@
	mv $@/out out/$@