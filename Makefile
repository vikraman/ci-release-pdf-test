TEX = $(wildcard *.tex)
PDF = $(subst .tex,.pdf,$(TEX))

all: $(PDF)

%.pdf: %.tex
	latexmk -xelatex $<

clean:
	latexmk -C

.PHONY: clean
