all : syllabus-psci-220.pdf

syllabus-psci-220.pdf : syllabus-psci-220.tex syllabus-body.tex
	latexmk -bibtex- syllabus-psci-220
	latexmk -c

syllabus-body.tex : syllabus.md
	pandoc syllabus.md -o syllabus-body-tmp.tex
	gsed -i'' 's/\[htbp\]/[2.75in]/' syllabus-body-tmp.tex
	gsed -i'' 's/{figure}/{marginfigure}/g' syllabus-body-tmp.tex
	gsed -i'' 's/includegraphics/includegraphics[width=80px]/' syllabus-body-tmp.tex
	gsed -i'' 's/\\caption/\\caption*/' syllabus-body-tmp.tex
	mv syllabus-body-tmp.tex syllabus-body.tex
