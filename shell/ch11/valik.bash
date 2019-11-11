#!/bin/bash

echo "täna kustutame faile"

PS3="milline fail kustutada? "

select file in $(ls) "Stop the loop"
do
    if [ "Stop the loop" = "$file" ]
    then
        break
    fi

    echo "kustutame faili: $file"

done
