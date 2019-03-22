#!/bin/ksh

while getopts +a:bc votmed
do
    case $votmed in
        a) echo "oli parameeter a koos argumendiga $OPTARG" ;;
        b) echo "oli parameeter b" ;;
            #see töötab ainult ksh sees
       +b) echo "lülitame B välja" ;;
        c) echo "oli parameeter c" ;;
        *) echo "usage: $(basename $0) [-a value] [-b] [-c] arg ..." ;;
    esac
done

shift $((OPTIND-1))
# echo "ülejäänud käsurida: $*"
for argument #in $@
do
    echo "see on argument: $argument"
done
