#!/bin/sh

scriptpath=${0%/*}

pause() {
    echo -n "Press RETURN to continue"
    read answer
}
. "$scriptpath/day"

day
pause
echo "valmis"
