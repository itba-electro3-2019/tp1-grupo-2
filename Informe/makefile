##################################################################
# Makefile for LaTeX
##################################################################

REPORT_FILE = informe
SOURCE = caratula ej1 ej2 ej3 ej4 ej5
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.log *.fdb_latexmk *.fls

informe: $(REPORT_FILE).tex $(SOURCE)/*.tex 
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $(REPORT_FILE).tex
	rm -rf $(OTHER)
clean:	
	rm -rf $(OTHER)
