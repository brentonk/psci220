all : syllabus-psci-220.pdf

syllabus-psci-220.pdf : syllabus-psci-220.tex syllabus-body.tex
	latexmk -bibtex- syllabus-psci-220
	latexmk -c

syllabus-body.tex : syllabus.md
	pandoc syllabus.md -o syllabus-body.tex
