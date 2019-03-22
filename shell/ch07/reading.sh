#!/bin/sh

cat pets | while read line
do
    for word in $line
    do
        if [ "$word" = "dog" ]
        then
            continue 2
        fi
        echo "the next word: $word" 
    done
done
