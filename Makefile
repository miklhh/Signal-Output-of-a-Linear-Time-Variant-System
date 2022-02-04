
.PHONY: keep-going clean

main.pdf: main.tex
	latexmk -pdf -pdflatex="pdflatex -synctex=1 -halt-on-error" -use-make $<

keep-going:
	latexmk -pdf -pvc -pdflatex="pdflatex -synctex=1 -halt-on-error" -use-make $<

clean:
	@rm -fv *.aux *.fdb_latexmk *.fls *.log *.synctex.gz
