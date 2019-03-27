#!/bin/sh
#!/bin/bash
#!/bin/dash
#!/bin/ksh

miski() {
    echo yks
    echo kaks
}

sissevalja() {
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
ls -l | sissevalja | tee tulemus.txt

echo "  valmis"
