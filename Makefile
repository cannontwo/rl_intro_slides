.PHONY: root.pdf all clean
	all: root.pdf

root.pdf: src/*.tex Makefile
	latexmk -pdf -bibtex -pdflatex="pdflatex -interaction=nonstopmode -file-line-error -shell-escape" -use-make src/root.tex

clean:
	latexmk -CA -f root.pdf
	rm root*
