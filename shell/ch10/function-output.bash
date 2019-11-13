#!/bin/bash
#!/bin/ksh
#!/bin/sh
#!/bin/dash

miski() {
    echo yks
    echo kaks
}

sissevalja() {
    local number=1
    while read rida
    do
        echo -e "$number\t$rida"  # dash ei saa aru, mis -e on (tuleb ära korjata)
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
