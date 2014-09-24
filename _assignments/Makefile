assignments = $(wildcard *.md)
pdfs = $(assignments:.md=.pdf)

all : $(pdfs)

$(pdfs) : %.pdf : %.md assignment-template.tex
	pandoc -t latex --template=assignment-template.tex $< -o $*.tex
	latexmk -f -bibtex- $*
	latexmk -c
	rm -f $*.bbl
