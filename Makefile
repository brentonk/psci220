all : syllabus-psci-2220.pdf

syllabus-psci-2220.pdf : syllabus-psci-2220.tex syllabus-body.tex
	latexmk -bibtex- syllabus-psci-2220
	latexmk -c

syllabus-body.tex : syllabus.md
	pandoc syllabus.md -o syllabus-body.tex
