PROJECT=old-persian
TEX_ENGINE=xelatex
BIB_ENGINE=bibtex

BUILDTEX=$(TEX_ENGINE) -shell-escape $(PROJECT).tex
BUILDBIB=$(BIB_ENGINE) $(PROJECT).aux
REMOVE_AUXILIARY=make clean
PUBLISH_NOTES=make git-push

all:
	$(REMOVE_AUXILIARY)
	$(BUILDTEX)
	$(BUILDBIB)
	$(BUILDTEX)
	$(BUILDTEX)
	$(REMOVE_AUXILIARY)
	$(PUBLISH_NOTES)

clean-all:
	rm -rf *.aux *.log *.out *.bbl *.blg $(PROJECT).pdf

clean:
	rm -rf *.aux *.log *.out *.bbl *.blg

git-push:
	git add old-persian.pdf
	git commit -S -m "Update notes"
	git push origin master