notes = $(wildcard *.md)
pdfs = $(notes:.md=.pdf)

all : $(pdfs)

$(pdfs) : %.pdf : %.md note-template.tex
	pandoc -t latex --template=note-template.tex $< -o $*.tex
	latexmk -f -bibtex- $*
	latexmk -c
	rm -f $*.bbl
