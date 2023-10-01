MAIN=main

PDFLATEX=pdflatex

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	$(PDFLATEX) $(MAIN).tex
	$(PDFLATEX) $(MAIN).tex  

clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc

deepclean: clean
	rm -f $(MAIN).pdf

.PHONY: all clean deepclean

