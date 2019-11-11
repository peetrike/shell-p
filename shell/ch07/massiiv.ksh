#!/bin/ksh

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

    # see töötab ksh-ga aga mitte bashiga
set -A massiiv yks kaks kolm neli viis kuus

echo ${massiiv[1]}
echo ${massiiv[2]}
echo ${massiiv[*]}
echo ${massiiv[-1]}
