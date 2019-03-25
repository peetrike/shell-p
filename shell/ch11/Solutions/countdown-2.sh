#!/bin/sh
# countdown
i=10
while [ $i -ne 1 ]
do
    echo $i
    i=$(( i - 1 ))
    sleep 1
done
echo "Boom!"
