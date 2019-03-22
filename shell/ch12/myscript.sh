#!/bin/sh
echo Alustame
echo "Shelli juhtivad võtmed: $-"

# siit läheb kahtlaseks, hakkame kontrollima
set -x
echo "Shelli juhtivad votmed nyyd: $-"
PS4="+ Debug:  "
echo tere
for i in 1 2 3 4 5
do
	echo see on ${i}. kord
done

# siit alates on korras
set +x
echo "Shelli juhtivad võtmed lõpuks: $-"
echo "minu kodukaust on:" ~
echo *
