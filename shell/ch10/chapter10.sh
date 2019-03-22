#!/bin/sh

midagi() {
    local myvar=5
    echo "funktsioonis: " $myvar
        # see ei ole hea tava
    teine=funktsioonis
    echo "funktsioonis: $teine ja veel teksti"
}

myvar=minu
teine=teine
echo $myvar
echo $teine
midagi
echo $myvar
echo $teine
midagi | wc
