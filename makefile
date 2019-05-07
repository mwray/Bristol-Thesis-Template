# You want latexmk to *always* run, because make does not have all the info.
# Also, include non-file targets in .PHONY so they are run regardless of any
# file of the given name existing.
DOC_SRC:=$(shell find . -maxdepth 1 -iregex './[^.].*\.tex')
MEDIA_SRC:=$(shell find figures -type f)
PDF_SVG := $(patsubst %.svg,%.pdf,$(SVG_SRC))
DEPS := $(DOC_SRC) $(MEDIA_SRC) $(PDF_SVG) $(BIB_FILES)
BIB_FILES:= ~/library.bib
.PHONY: all clean

all: thesis.pdf

# -pdf tells latexmk to generate PDF directly (instead of DVI).
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.
# -interaction=nonstopmode keeps the pdflatex backend from stopping at a
#     missing file reference and interactively asking you for an alternative.

%.pdf: %.tex $(DEPS)
	latexmk -f -pdf -pdflatex="pdflatex -interaction=nonstopmode --shell-escape" -output-directory=output -aux-directory=output -use-make $<

clean:
	latexmk -output-directory=output -aux-directory=output -C $(DOC_SRC)
