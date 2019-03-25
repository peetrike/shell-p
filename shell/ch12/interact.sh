#!/bin/sh

pause() {
#    echo "Press RETURN to continue" >&2
    echo "Press Ctrl-C to break" >&2
#    read junk
    sleep 3
}

echo Alustame
pause

ls -l | tee algus.txt

cat algus.txt | while read line
do
        set -- $line
    if [ "total" = "$1" ]; then
        echo "leidsin ülearuse rea" >&2
        pause
    else
        echo "fail $9 pikkusega $5"
    fi
done | sort -rn -k 4
