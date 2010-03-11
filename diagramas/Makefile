TEXFILES = $(shell ls *.tex | grep -v ^flujo\.tex)
PDFFILES = $(addsuffix .pdf, $(basename $(TEXFILES)))

all: $(PDFFILES)

%.pdf: %.tex
	@echo "Building $@"
	@pdflatex $< -halt-on-error -interaction=nonstopmode &> .my_log || (cat .my_log && rm .my_log && exit 1)
	@rm .my_log

clean:
	rm -f $(wildcard *.aux) $(wildcard *.log) $(wildcard *.pdf)

.PHONY: clean all
