#!/bin/sh

break

for j in $(seq 10) ; do
    echo "\tJ on $j"
    i=1
    while [ $i -le 10 ] ; do
        echo "i on $i"
        if [ $i -eq 5 ] ; then
            break 2
        fi
        if [ $i -eq 4 ] ; then
            i=6
            continue
        fi
        i=$(($i+1))
    done
done
echo tehtud
