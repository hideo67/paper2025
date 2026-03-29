#!/bin/bash -e

input1="arith1D/circuit.png"
input2="arith1D/elec_motion.png"
output="arith1D/circuit_and_elec_motion.png"
input3="ucrz2D/circuit.png"
input4="ucrz2D/elec_motion.png"
output2="ucrz2D/circuit_and_elec_motion.png"
input5="compare_energy/compare_energy_h2D_TO2_r0lim_0_0.png"
input6="compare_energy/compare_energy_h2D_TO2_r0lim_1_0.png"
output3="compare_energy/compare_energy_h2D_TO2_r0lim_combined.png"
input7="compare_energy/compare_energy_h2D_TO2_rofs_0_0.png"
input8="compare_energy/compare_energy_h2D_TO2_rofs_1_0.png"
output4="compare_energy/compare_energy_h2D_TO2_rofs_combined.png"
input9="classic2D/6b_n0_m0/t_00.000_3d-qp.png"
input10="classic2D/6b_n1_m0/t_00.000_3d-qp.png"
output5="classic2D/initial-wavefunction-2d-00_10.png"
input11="../jctc-draft_x_figs_arith.pdf"
output6="quantikz/arith.png"
input12="../jctc-draft_x_figs_ucrz.pdf"
output7="quantikz/ucrz.png"
input13="dq_tradeoff/eval1d_dq.png"
input14="dq_tradeoff/eval2d_dq_geom_0_0.png"
input15="dq_tradeoff/eval2d_dq_geom_1_0.png"
output8="dq_tradeoff/eval1d_2d.png"
input16="sdt_error/trotter_err_n0_m0_6b_t1.0.png"
input17="sdt_error/trotter_err_n0_m0_9b_t1.0.png"
input18="sdt_error/trotter_err_n1_m0_6b_t1.0.png"
input19="sdt_error/trotter_err_n1_m0_9b_t1.0.png"
output9="sdt_error/trotter_err_00_10_t1.png"
input20="sdt_error/trotter_err_n1_m1_6b_t1.0.png"
input21="sdt_error/trotter_err_n1_m1_9b_t1.0.png"
output10="sdt_error/trotter_err_11_t1.png"
label_splice="120x0"
label_pointsize="64"
circuit_label_pointsize="64"
label_offset="+100+100"
circuit_label_offset="+100+100"

if [[ ! -f "$input1" ]]; then
	echo "Error: missing input file: $input1" >&2
	exit 1
fi

if [[ ! -f "$input2" ]]; then
	echo "Error: missing input file: $input2" >&2
	exit 1
fi

if [[ ! -f "$input3" ]]; then
	echo "Error: missing input file: $input3" >&2
	exit 1
fi

if [[ ! -f "$input4" ]]; then
	echo "Error: missing input file: $input4" >&2
	exit 1
fi

if [[ ! -f "$input5" ]]; then
	echo "Error: missing input file: $input5" >&2
	exit 1
fi

if [[ ! -f "$input6" ]]; then
	echo "Error: missing input file: $input6" >&2
	exit 1
fi

if [[ ! -f "$input7" ]]; then
	echo "Error: missing input file: $input7" >&2
	exit 1
fi

if [[ ! -f "$input8" ]]; then
	echo "Error: missing input file: $input8" >&2
	exit 1
fi

if [[ ! -f "$input9" ]]; then
	echo "Error: missing input file: $input9" >&2
	exit 1
fi

if [[ ! -f "$input10" ]]; then
	echo "Error: missing input file: $input10" >&2
	exit 1
fi

if [[ ! -f "$input11" ]]; then
	echo "Error: missing input file: $input11" >&2
	exit 1
fi

if [[ ! -f "$input12" ]]; then
	echo "Error: missing input file: $input12" >&2
	exit 1
fi

if [[ ! -f "$input13" ]]; then
	echo "Error: missing input file: $input13" >&2
	exit 1
fi

if [[ ! -f "$input14" ]]; then
	echo "Error: missing input file: $input14" >&2
	exit 1
fi

if [[ ! -f "$input15" ]]; then
	echo "Error: missing input file: $input15" >&2
	exit 1
fi

if [[ ! -f "$input16" ]]; then
	echo "Error: missing input file: $input16" >&2
	exit 1
fi

if [[ ! -f "$input17" ]]; then
	echo "Error: missing input file: $input17" >&2
	exit 1
fi

if [[ ! -f "$input18" ]]; then
	echo "Error: missing input file: $input18" >&2
	exit 1
fi

if [[ ! -f "$input19" ]]; then
	echo "Error: missing input file: $input19" >&2
	exit 1
fi

if [[ ! -f "$input20" ]]; then
	echo "Error: missing input file: $input20" >&2
	exit 1
fi

if [[ ! -f "$input21" ]]; then
	echo "Error: missing input file: $input21" >&2
	exit 1
fi

convert \
	\( "$input1" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$circuit_label_pointsize" -annotate "$circuit_label_offset" "(a)" \) \
	\( "$input2" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$circuit_label_pointsize" -annotate "$circuit_label_offset" "(b)" \) \
	+append "$output"

convert \
	\( "$input3" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$circuit_label_pointsize" -annotate "$circuit_label_offset" "(a)" \) \
	\( "$input4" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$circuit_label_pointsize" -annotate "$circuit_label_offset" "(b)" \) \
	+append "$output2"

convert \
	\( "$input5" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(a)" \) \
	\( "$input6" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(b)" \) \
	+append "$output3"

convert \
	\( "$input7" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(a)" \) \
	\( "$input8" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(b)" \) \
	+append "$output4"

convert \
	\( "$input9" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(a)" \) \
	\( "$input10" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(b)" \) \
	+append "$output5"

mkdir -p "$(dirname "$output8")"
convert \
	"$input13" \
	"$input14" \
	"$input15" \
	-append "$output8"

mkdir -p "$(dirname "$output9")"
convert \
	\( \
		\( "$input16" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(a)" \) \
		\( "$input17" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(b)" \) \
		+append \
	\) \
	\( \

mkdir -p "$(dirname "$output10")"
convert \
	\( "$input20" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(a)" \) \
	\( "$input21" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(b)" \) \
	+append "$output10"
		\( "$input18" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(c)" \) \
		\( "$input19" -background white -gravity west -splice "$label_splice" -gravity northwest -fill black -pointsize "$label_pointsize" -annotate "$label_offset" "(d)" \) \
		+append \
	\) \
	-append "$output9"

mkdir -p "$(dirname "$output6")"
if command -v pdftocairo >/dev/null 2>&1; then
	pdftocairo -png -singlefile -r 300 "$input11" "${output6%.png}"
elif command -v pdftoppm >/dev/null 2>&1; then
	pdftoppm -png -singlefile -r 300 "$input11" "${output6%.png}"
else
	echo "Error: neither pdftocairo nor pdftoppm is available for PDF conversion" >&2
	exit 1
fi

mkdir -p "$(dirname "$output7")"
if command -v pdftocairo >/dev/null 2>&1; then
	pdftocairo -png -singlefile -r 300 "$input12" "${output7%.png}"
elif command -v pdftoppm >/dev/null 2>&1; then
	pdftoppm -png -singlefile -r 300 "$input12" "${output7%.png}"
else
	echo "Error: neither pdftocairo nor pdftoppm is available for PDF conversion" >&2
	exit 1
fi

