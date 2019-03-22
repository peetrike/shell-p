#!/bin/sh -x
myVar=ehhee
mynum=2
mylongvar="minu pikk tekst"
my_var=ahhaa
file=minu
mycommand=ls
export numdays=30 nummonths=3
export mynum #=2

echo $myVar
echo ${my_var}
ls "${file}.err"

$mycommand -l
