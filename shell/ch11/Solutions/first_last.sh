#!/bin/sh
# see skript väljastab esimese ja viimase käsurea argumendi

    # salvesta esimene käsurea argument
esimene=$1

    # arvuta viimane käsurea argument
    # alternatiiv: while [ "$#" -gt 0 ]
    # alternatiiv: until [ "$#" -eq 0 ]
    # alternatiiv: until (( $# == 0 ))
while [ 0 -lt "$#" ]
do
    viimane=$1
    shift
done

    # väljasta tulemus
echo $esimene $viimane
