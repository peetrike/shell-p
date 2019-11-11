#!/bin/sh

usage_showed=0

while getopts Aa:b-:c opt
do
    case $opt in
        a)  echo "sa ütlesid a"
            echo "lisaargument: $OPTARG"
        ;;
        A) echo "Appi - A" ;;
        b) echo "sa ütlesid b" ;;
        c) echo "võti c" ;;
        -) echo "pikk võti: $OPTARG" ;;
       \?)
            if [ 0 -eq "$usage_showed" ]
            then
                echo "usage: $0 -a arg -b -A --loll"
                usage_showed=1
            fi
        ;;
    esac
done

shift $((OPTIND-1))

echo "võtmed vaadatud, lähme edasi"

echo "ülejäänud asjad:" $@
