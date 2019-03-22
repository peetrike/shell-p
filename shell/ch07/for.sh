#!/bin/sh

#loenduriga tsükkel
for count in $(seq 10)
do
    echo "rida $count"
done
echo "-------------------"

# foreach filename...
for file in *
do
    # echo "leidsin faili: $file"
    file $file
done
echo "-------------------"

for file in $(ls -a p*)
do
    echo "file: $file"
done
echo "-------------------"

