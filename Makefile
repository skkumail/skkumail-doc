MAIN=main
PDFLATEX=pdflatex

PDF_FILE=$(MAIN).pdf

all: $(PDF_FILE)

$(PDF_FILE): $(MAIN).tex
	$(PDFLATEX) $(MAIN).tex
	$(PDFLATEX) $(MAIN).tex

open: $(PDF_FILE)
	evince $(PDF_FILE)

clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc

deepclean: clean
	rm -f $(PDF_FILE)

.PHONY: all clean deepclean open

