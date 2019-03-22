#!/bin/sh

a=3
if
    [ $a -eq 3 ]
then
    echo A on tõesti 3
fi

if [ $b -eq 3 ]  # siit tuleb viga ($b on tühi väärtus)
then
    echo B on ka 3
fi
echo [ $b -eq 3 ] # vea põhjus


if [ ${b:=3} -eq 3 ]
then echo "B on vaikeväärtus (3)"
fi

if [ "yes" = "$answer" ] ; then
    echo B on jah
fi
