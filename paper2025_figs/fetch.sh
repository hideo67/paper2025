#!/bin/bash -e

SRC_ROOT=~/work/py/crsq/crsq-explore/notebooks/onedrive.lnk/notebook/deltak_range

FILES=(
    psitilde1D_continuous.png
    psitilde2D_continuous.png
)

DEST_DIR=deltak_range
mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        cp -v $SRC_ROOT/$f $DEST_DIR
        chmod 644 $DEST_DIR/$f
    fi
done

SRC_ROOT=~/work/py/crsq/crsq-papers/2025/notebooks/output/diagrams
FILES=(
    toc-graphics.png
)
DEST_DIR=toc_graphics

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        cp -v $SRC_ROOT/$f $DEST_DIR
        chmod 644 $DEST_DIR/$f
    fi
done

