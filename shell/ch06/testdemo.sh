#!/bin/sh

echo "kas skript on fail?"
test -f $0; echo $?

echo "checking if a is 3"
[ 3 -eq $a ]; echo $? # siit tuleb süntaksi viga
[ 3 -eq ${a-0} ]; echo $? # siit ei tule süntaksi viga

a=3
echo "checking a once more"
[ 3 -eq "$a" ]; echo $?

echo "Do you want to continue [Y/n]?"
read answer junk
unset junk
test "y" = "${answer:=y}"; echo $?
echo "The answer was: $answer"
