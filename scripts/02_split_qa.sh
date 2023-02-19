

# for year in `seq 2014 2021`; do
for year in `seq 2016 2018`; do
    for pdf in $year/*.pdf; do
        echo "Processing $pdf ..."
        
        id=`basename "$pdf" .pdf | sed 's/ /_/g'`
        Q_fn=$year/$id.questions.pdf
        A_fn=$year/$id.answers.pdf

        python split_Q_A.py "$pdf" "$Q_fn" "$A_fn"

        rm -f "$pdf"
    done
done

echo DONE.
