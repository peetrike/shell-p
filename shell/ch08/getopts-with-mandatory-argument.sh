#!/bin/sh

opt_a=0
opt_b=0
opt_c=0

arg_a=""

while getopts ":a:bc" opt
do
    case $opt in 
        a)  opt_a=1
            arg_a=$OPTARG ;;
        b)  opt_b=1;;
        c)  opt_c=1;;
        \?) echo "unknown option: $OPTARG"
            echo "usage: myscript [-a arg] [-b] [-c] args..."
			exit 1;;
        :)  echo "required argument missing for option $OPTARG";;
  esac
done
shift `expr $OPTIND - 1`
echo "Arguments to script are: $*"

if [ "$opt_a" -eq 1 ]
then
    echo "option A is on and argument is $arg_a"
fi
if [ "$opt_b" -eq 1 ]
then
    echo "option B is on"
fi
if [ "$opt_c" -eq 1 ]
then
    echo "option C is on"
fi
