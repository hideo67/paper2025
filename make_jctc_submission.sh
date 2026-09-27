#!/bin/bash -e

D=submission
FIGDIR=paper2025_figs

rm -rf $D
mkdir $D

TEXSRC="jctc-draft jctc-draft_1_intro jctc-draft_2_method jctc-draft_34_results_discussions jctc-draft_a_appendix jctc-draft_x_figs_arith jctc-draft_x_figs_ucrz"

for T in $TEXSRC ; do
    cp -v $T.tex $D
done

MISCSRC="jctc-draft_commands.sty quantum.bib .latexmkrc run_latex.sh"
for M in $MISCSRC ; do
    cp -v $M $D
done

PNGS="$FIGDIR/*/*.png $FIGDIR/*/*/*.png"
for P in $PNGS ; do
    DD=$D/$(dirname $P)
    if [ ! -d $DD ]; then
        mkdir -p $DD
    fi
    cp -v $P $DD
done

zip submission.zip -r submission
