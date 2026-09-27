#!/bin/sh

DOC=aip-draft.tex
latexmk -synctex=1 -interaction=nonstopmode -file-line-error -lualatex -outdir=output $DOC
