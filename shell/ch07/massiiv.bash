#!/bin/bash

massiiv[1]=mina
massiiv[2]=tema
massiiv[20]=vanaema

echo ${massiiv[1]}
echo ${massiiv[2]}
echo ${massiiv[*]}
echo ${massiiv[-1]}
echo ${massiiv[-19]}

echo "kokku on ${#massiiv[*]} elementi"

minumuutuja=hurraa
echo ${#minumuutuja}

    #see töötab bashiga, aga mitte ksh88-ga
massiiv=(yks kaks kolm neli viis kuus)

echo ${massiiv[1]}
echo ${massiiv[2]}
echo ${massiiv[*]}
echo ${massiiv[-1]}

    #see töötab bashiga, aga mitte ksh-ga
unset massiiv
declare -A massiiv=([yks]="one" [kaks]="two" [kolm]="three")
echo "associative array demo"
echo ${massiiv[yks]}
