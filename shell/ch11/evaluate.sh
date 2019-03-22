#!/bin/sh

    # käivitame stringi kui käsurea
users="who | wc -l"
$users
eval $users

    # tekitame käsurea parameetrid
set one two three four
echo $#
echo '$'$#
eval echo '$'$#

eval lastarg='$'$#
echo "lastarg is $lastarg"

    # viitame ühe muutjaga teisele
viit=lastarg
eval uus=\$$viit
echo "viidatud väärtus: $uus"
