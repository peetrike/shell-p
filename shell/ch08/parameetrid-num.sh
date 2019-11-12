#!/bin/sh

echo "Praegu on $# parameetrit"

for parameeter
do
    echo $parameeter
done

echo "nüüd on järgi $# parameetrit"

while [ $# -gt 0 ]
do
    echo $1
    shift
done

echo "nüüd on järgi $# parameetrit"

# set filenames from cwd as parameters
set *
echo "nüüd on järgi $# parameetrit"
