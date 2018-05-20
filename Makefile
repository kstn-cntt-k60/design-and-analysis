report.pdf: report.tex			\
	sections/title-page.tex 	\
	sections/system-requirements.tex 	\
	sections/requirements-analysis.tex 	\
	sections/functional-model.tex 	\
	sections/structural-model.tex 	\
	sections/behavioral-model.tex 	\
	sections/design-model.tex 		\
	sections/conclusion.tex 
	pdflatex report.tex
	pdflatex report.tex
