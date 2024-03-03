PROJECT=main
TEX_ENGINE=xelatex

BUILDTEX=$(TEX_ENGINE) -shell-escape $(PROJECT).tex x 2
REMOVE_AUXILIARY=make clean

all:
	$(REMOVE_AUXILIARY)
	$(BUILDTEX)
	$(REMOVE_AUXILIARY)

clean-all:
	rm -rf *.aux *.log main.pdf

clean:
	rm -rf *.aux *.log
