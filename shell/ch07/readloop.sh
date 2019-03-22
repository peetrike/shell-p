#!/bin/sh

ls -al | grep -v "^total" | while
    read perms links owner group size mon day time filename
do
    # kui grep torust välja võtta, on vaja 3 järgnevat rida
#    if [ "$perms" = "total" ] ; then
#        continue
#    fi
    if [ -f $filename ] && [ $size -gt 100 ]
    then
        echo $filename $size
    fi
done | sort -r -n -k 2
