#!/bin/sh

DOC=jctc-draft.tex
latexmk -synctex=1 -interaction=nonstopmode -file-line-error -lualatex -outdir=out $DOC
