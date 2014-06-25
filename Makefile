# Simple Makefile for compile TEX files.
# If use this Makefile, please change FILE variable to tex filename.
# make, which means make all means compile tex file.
# make pdf means build pdf file to dvip file.


FILE     = test.tex
TEX      = platex
VIEW_DVI = xdvi
TO_PDF   = dvipdfmx
VIEW_PDF = evince

all: $(FILE)
	$(TEX) $^ && $(VIEW_DVI) $(basename $^).dvi

pdf: $(basename $(FILE)).dvi
	$(TO_PDF) $(basename $^).dvi && $(VIEW_PDF) $(basename $^).pdf
