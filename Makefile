# Makefile for compiling latex document with latexmk

OUTDIR ?= build
FILE ?= main.tex
LATEXMK = -pdf -file-line-error -f -interaction=nonstopmode -output-directory=$(OUTDIR)

.PHONY: help Makefile
help:
	@echo "Usage: $(MAKE) [target]"
	@echo "  targets:"
	@echo "    pdf       build the document"
	@echo "		 listen    listen to file changes and automatically build pdf"
	@echo "    clean     remove the build directory and build pdf"
	@echo "    help      display this message"
	@echo ""
	@echo "  NOTE: You can specify the filename of your latex document with FILE=filename.tex."
	@exit 0


pdf:
	@echo "Compiling $(FILE)..."
	@latexmk $(LATEXMK) $(FILE)

listen:
	@echo "Listening on filechanges for $(FILE)..."
	@latexmk $(LATEXMK) -pvc $(FILE)

clean:
	@rm -R $(OUTDIR)
	@make pdf $(1)