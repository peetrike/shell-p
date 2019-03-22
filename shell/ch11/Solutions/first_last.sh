#!/bin/sh
# see skript v�ljastab esimese ja viimase k�surea argumendi

  # salvesta esimene k�surea argument
esimene=$1

  # arvuta viimane k�surea argument
  # alternatiiv: while [ "$#" -gt 0 ]
  # alternatiiv: until [ "$#" -eq 0 ]
  # alternatiiv: until (( $# == 0 ))
while [ 0 -lt "$#" ]
do
	viimane=$1
	shift
done

  # v�ljasta tulemus
echo $esimene $viimane
