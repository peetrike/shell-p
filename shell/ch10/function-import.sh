#!/bin/sh

scriptpath=${0%/*}

pause() {
    echo -n "Press RETURN to continue"
    read answer
}
. "$scriptpath/day"

day
type day
command -V day
pause
echo "valmis"
