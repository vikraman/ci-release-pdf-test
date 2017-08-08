TEX = $(wildcard *.tex)
PDF = $(subst .tex,.pdf,$(TEX))

all: $(PDF)

%.pdf: %.tex
	latexmk -pdf $<

clean:
	latexmk -C

.PHONY: clean
