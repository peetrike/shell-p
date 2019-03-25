#!/bin/sh


echo $1
echo *
echo $(ls *.sh)

set -v
sleep 3
for i in 1 2 3 4
do
    echo "on $i"
    sleep 1
done

set +v
echo aitab küll
