#!/bin/bash -e

SRC_ROOT=veda-01:crsq/crsq-explore/scripts/onedrive.lnk

SRC_DIR=$SRC_ROOT/count_gates

FILES=(hamiltonian-gatecount-revision2.png)

for f in "${FILES[@]}"; do
    if [ ! -f $f ]; then
        scp $SRC_DIR/$f .
    fi
done

SRC_DIR=$SRC_ROOT/diagrams

FILES=(psi0_h2d_opt.png)

for f in "${FILES[@]}"; do
    if [ ! -f $f ]; then
        scp $SRC_DIR/$f .
    fi
done

SRC_DIR=$SRC_ROOT/circuits1D/GPU_cuStateVec_double_6bsigned_TO1/N1odd_L15.0_X0.0/dt0.010/63n.20e/STAR/circuits300dpi
DEST_DIR=arith1D
FILES=(
    "circuit.png"
    "elec_motion.png"
    "elec_potential_arithmetic.png"
)
mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

SRC_DIR=$SRC_ROOT/circuits2D/GPU_cuStateVec_double/n0_m0_TO1_r0lim_0.250/6b_L5.0_T4.0_iT0.2_dt0.001/circuits300dpi
DEST_DIR=ucrz2D
FILES=(
    "circuit.png"
    "elec_motion.png"
    "elec_potential_qrom.png"
)
mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

#1D波動関数の初期値のサンプル

SRC_DIR=$SRC_ROOT/analytic1D/1D_6b_signed/N1_L15.0_X0.0_WM32/dt0.01/0n.20e/images300dpi
DEST_DIR=analytic1D
FILES=(t_00.000.png)

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

#2D波動関数の初期値のサンプルx3 描画レイアウトは特殊
SRC_DIR=$SRC_ROOT/classic2D/n0_m0_TO2_r0lim_0.250/6b_L5.0_T4.0_iT0.2_dt0.001/images300dpi
DEST_DIR=classic2D/6b_n0_m0
FILES=(t_00.000_3d-qp.png)

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

SRC_DIR=$SRC_ROOT/classic2D/n1_m0_TO2_r0lim_0.250/6b_L18.0_T30.0_iT0.5_dt0.01/images300dpi
DEST_DIR=classic2D/6b_n1_m0
FILES=(t_00.000_3d-qp.png)

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

SRC_DIR=$SRC_ROOT/classic2D/n1_m1_TO2_r0lim_0.250/6b_L25.0_T30.0_iT0.5_dt0.01/images300dpi
DEST_DIR=classic2D/6b_n1_m1
FILES=(t_00.000_3d-qp.png)

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

# compare energy vs a in deltar/a for 2d

SRC_DIR=$SRC_ROOT/compare2D
DEST_DIR=compare_energy
FILES=(
    compare_energy_h2D_TO2_r0lim_0_0.png
    compare_energy_h2D_TO2_r0lim_1_0.png
    compare_energy_h2D_TO2_rofs_0_0.png
    compare_energy_h2D_TO2_rofs_1_0.png
)

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

# compare energy vs a in deltar/a for 3d

SRC_DIR=$SRC_ROOT/compare3D
DEST_DIR=compare_energy
FILES=(
    compare_energy_h3D_TO2_r0lim_1_0_0.png
)

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

# delta-q trade-off analysis

SRC_DIR=$SRC_ROOT/dq_tradeoff2
DEST_DIR=dq_tradeoff

FILES=(
    eval1d_dq.png
    eval2d_dq_geom_0_0.png
    eval2d_dq_geom_1_0.png
    eval2d_dq_geom_1_1.png
    )

mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

# trotter error measurement
SRC_ROOT=veda-01:crsq/crsq-explore/scripts/onedrive.lnk/parameters/evaluator/graphs
SRC_DIR=$SRC_ROOT/t1.0
DEST_DIR=sdt_error
FILES=(
    trotter_err_n0_m0_6b_t1.0.png
    trotter_err_n0_m0_9b_t1.0.png
    trotter_err_n1_m0_6b_t1.0.png
    trotter_err_n1_m0_9b_t1.0.png
    trotter_err_n1_m1_6b_t1.0.png
    trotter_err_n1_m1_9b_t1.0.png
)
mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

SRC_DIR=$SRC_ROOT/t30
DEST_DIR=sdt_error
FILES=(
    trotter_err_n0_m0_6b_t30.png
    trotter_err_n0_m0_9b_t30.png
    trotter_err_n1_m0_6b_t30.png
    trotter_err_n1_m0_9b_t30.png
    trotter_err_n1_m1_6b_t30.png
    trotter_err_n1_m1_9b_t30.png
)
mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

# energy vs bits
SRC_ROOT=veda-01:crsq/crsq-explore/scripts/onedrive.lnk
SRC_DIR=$SRC_ROOT/compare1D
DEST_DIR=energy_err_trend_1d
FILES=(
    energy_vs_bits_opt.png
)
mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

SRC_DIR=$SRC_ROOT/compare2D
DEST_DIR=energy_err_trend_2d
FILES=(
    "energy_vs_bits_TO1_L5,5,6,7_n0_m0_T4.0.png"
    "energy_vs_bits_TO1_L18,21,24,27_n1_m0_T30.png"
    "energy_vs_bits_TO1_L25,30,34,39_n1_m1_T30.png"
)
mkdir -p $DEST_DIR
for f in "${FILES[@]}"; do
    if [ ! -f $DEST_DIR/$f ]; then
        scp $SRC_DIR/$f $DEST_DIR
    fi
done

