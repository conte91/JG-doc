all: report_oneside.pdf report_twoside.pdf

report_oneside.pdf: report_onesided.tex report.tex 
	pdflatex report_onesided.tex
	biber report_onesided
	pdflatex report_onesided.tex

report_twoside.pdf: report_twosided.tex report.tex 
	pdflatex report_twosided.tex
	biber report_twosided
	pdflatex report_twosided.tex

clean:
	-rm *.toc *.lof *.lot *.aux *.log *.out *.bbl *.blg *.bcf *.xml

.PHONY: clean
