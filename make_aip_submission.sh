#!/bin/bash -e

D=aip_submission
FIGDIR=paper2025_figs

rm -rf $D
mkdir $D

TEXSRC="aip-draft aip-draft_1_intro aip-draft_2_method aip-draft_34_results_discussions aip-draft_a_appendix aip-draft_x_figs_arith aip-draft_x_figs_ucrz"

for T in $TEXSRC ; do
    cp -v $T.tex $D
done

MISCSRC="aip-draft_commands.sty quantum.bib .latexmkrc aip_run_latex.sh"
for M in $MISCSRC ; do
    cp -v $M $D
done

TEXFILES=$(for T in $TEXSRC; do echo "$T.tex"; done)
grep -oh "$FIGDIR/[^{}]*\.png" $TEXFILES | sort -u | while IFS= read -r P; do
    DD=$D/$(dirname "$P")
    mkdir -p "$DD"
    cp -v "$P" "$DD"
done

zip aip_submission.zip -r aip_submission
