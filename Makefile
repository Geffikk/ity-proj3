NAME=proj3
PACK=xgeffe00-fit
IMG_DIR=./img-proj3
PACKAGES=algorithm2e.sty

.PHONY: clean pack pdflatex

all :
	latex $(NAME).tex
	latex $(NAME).tex
	dvips -t a4 $(NAME).dvi
	ps2pdf $(NAME).ps
	pdflatex $(NAME).tex
	pdflatex $(NAME).tex	


$(PACK).tar.gz: $(NAME).tex $(IMG_DIR) $(PACKAGES)
	tar -czf $@ $^ Makefile

clean:
	rm -f $(NAME).aux $(NAME).dvi $(NAME).log $(NAME).ps $(NAME).synctex.gz $(NAME).fls $(NAME).fdb_latexmk $(wildcard $(IMG_DIR)/*.pdf)
