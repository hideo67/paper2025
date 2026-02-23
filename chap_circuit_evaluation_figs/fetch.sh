#!/bin/bash -e

SRC_ROOT=~/onedrivedocuments/東大博士課程/論文執筆/2023/diagrams

SRC_DIR=$SRC_ROOT

FILES=(
    circuit-size-qubits.png
)
for f in "${FILES[@]}"; do
    if [ ! -f "$f" ]; then
        echo cp "$SRC_DIR/$f" .
        cp "$SRC_DIR/$f" .
        chmod 644 "$f"
    fi
done
