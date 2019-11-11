#!/bin/sh

#loop with counter
for count in $(seq 10)
do
    echo "rida $count"
done
echo "-------------------"

# foreach filename...
for file in *
do
    # echo "found file: $file"
    file $file
done
echo "-------------------"

for file in $(ls -a p*)
do
    echo "file: $file"
done
echo "-------------------"


# foreach command line argument
set yks kaks kolm neli
for var #in $@
do
    echo parameeter $var
done


# works only with Korn/bash shell
for ((a=1;a<10; a=a+1))
do
    echo number $a
done
