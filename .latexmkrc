#!/usr/bin/env perl
$out_dir          = 'output';
$max_repeat       = 5;
$pvc_view_file_via_temporary = 0;

# aip-draft* is an English-only AIP/REVTeX manuscript. Build it with
# lualatex (same engine as VSCode's "latexmk (lualatex)" default recipe),
# which reads PNG/JPEG dimensions natively, instead of the platex +
# dvipdfmx pipeline used elsewhere in this directory (that pipeline needs
# a pre-generated .xbb bounding-box file per raster image).
if (grep { /^aip-draft/ } @ARGV) {
    $pdf_mode         = 4;
    $lualatex         = 'lualatex %O %B -halt-on-error -synctex=1';
    $bibtex           = 'bibtex %O %B';
    $bibtex_use       = 2;
    $biber            = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';
    $makeindex        = 'makeindex %O -o %D %S';
} else {
    $latex            = 'platex %O %B -halt-on-error';
    $latex_silent     = 'platex %O %B -halt-on-error -interaction=batchmode';
    $bibtex           = 'pbibtex %O %B';
    $bibtex_use       = 2;
    $biber            = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';
    $dvipdf           = 'dvipdfmx %O -o %D %S';
    $makeindex        = 'mendex %O -o %D %S';
    $pdf_mode         = 3;
}
