
grades="
0102
0304
0506
0708
0910
1112
Parents
"

for grade in $grades; do

	outdir=math_kangaroo_$grade
	mkdir $outdir

	# for pdf in `ls mathkangaroo.ca/20*/*$grade*.pdf -1  | grep -v -e an0 -e sl0 -e answer`; do
	for pdf in `ls mathkangaroo.ca/20*/*$grade*.pdf -1` ; do
		mv $pdf $outdir/.
	done

done

