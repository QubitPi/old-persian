PROJECT=main
TEX_ENGINE=xelatex
BIB_ENGINE=bibtex

BUILDTEX=$(TEX_ENGINE) -shell-escape $(PROJECT).tex
BUILDBIB=$(BIB_ENGINE) $(PROJECT).aux
REMOVE_AUXILIARY=make clean

all:
	$(REMOVE_AUXILIARY)
	$(BUILDTEX)
	$(BUILDBIB)
	$(BUILDTEX)
	$(BUILDTEX)
	$(REMOVE_AUXILIARY)

clean-all:
	rm -rf *.aux *.log *.out *.bbl *.blg main.pdf

clean:
	rm -rf *.aux *.log *.out *.bbl *.blg
