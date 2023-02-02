
for i in *.pdf; do
    id=`echo $i | grep -e gr -e an | cut -c7-10`
    if [ "$id" == '' ]; then 
        continue
    fi
    echo $id
    # if [ ! -e $id ]; then
    #     mkdir $id
    # fi
    # mv "$i" $id
done

echo DONE.
