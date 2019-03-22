#!/bin/bash

miski() {
    echo yks
    echo kaks
}

sisse-välja() {
    local number=1
    while read rida
    do
        echo -e "$number\t$rida"
        number=$((number+1))
    done
}

echo "  funktsioon torus"
miski | wc -l

echo "  muutujale omistamine"
valjund=$(miski)
echo $valjund

echo "  funktsiooni väljakutse"
miski

echo "  sisse-välja"
ls -l | sisse-välja | tee tulemus.txt

echo "  valmis"