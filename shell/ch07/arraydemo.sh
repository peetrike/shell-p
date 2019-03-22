#!/bin/ksh

cat pets | while read line
do
    set -A pet $line
    echo "loom ${pet[0]}, nimi ${pet[1]}"
done
