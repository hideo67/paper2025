#!/bin/bash -e

SRC_ROOT=~/output/crsq-explore
SRC_DIR=$SRC_ROOT/analytic1D/1D_6b_signed/N1_L15.0_X0.0_WM32/dt0.01/63n.20e/images300dpi_w3.37in
DEST_DIR=aip/analytic1D
FILES=(t_00.000.png)

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        cp -v $SRC_DIR/$f $DEST_DIR
        chmod 644 $DEST_DIR/$f
    fi
done

#2D波動関数の初期値のサンプルx3 描画レイアウトは特殊
SRC_DIR=$SRC_ROOT/classic2D/n0_m0_TO2_r0lim_0.250/6b_L5.0_T4.0_iT0.2_dt0.001/images300dpi
DEST_DIR=classic2D/6b_n0_m0
FILES=(t_00.000_3d-qp.png)

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        cp -v $SRC_DIR/$f $DEST_DIR
    fi
done

SRC_DIR=$SRC_ROOT/classic2D/n1_m0_TO2_r0lim_0.250/6b_L18.0_T30.0_iT0.5_dt0.01/images300dpi
DEST_DIR=classic2D/6b_n1_m0
FILES=(t_00.000_3d-qp.png)

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        cp -v $SRC_DIR/$f $DEST_DIR
    fi
done

SRC_DIR=$SRC_ROOT/classic2D/n1_m1_TO2_r0lim_0.250/6b_L25.0_T30.0_iT0.5_dt0.01/images300dpi
DEST_DIR=classic2D/6b_n1_m1
FILES=(t_00.000_3d-qp.png)

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        cp -v $SRC_DIR/$f $DEST_DIR
    fi
done

