fast:
	pdflatex main.tex

memoire: all
	cp main.pdf memoire_$(shell date +'%y.%m.%d_%H:%M:%S').pdf

all:
	pdflatex main.tex
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

clean:
	rm -f main.pdf main.aux  main-blx.bib main.lot main.mtc0 main.glo main.gls main.ilg main.ind main.bcf main.glg main.ist  main.run.xml main.bbl main.lof main.maf main.out main.blg main.lo main.mtc main.ptc main.toc main.log main.alg main.acn main.acr main.mtc*
	
allClean: clean
	rm *.pdf
