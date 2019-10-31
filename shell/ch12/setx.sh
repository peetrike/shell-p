#!/bin/sh
#File: setx

  # command line options
while getopts dv OPTIONS
do
    case $OPTIONS in
            # debug mode, enable shell trace, write debug messages
        d) debugmode=y ;;
            # verbose mode, write verbose messages
        v) verbosemode=y ;;
    esac
done
shift $((OPTIND-1))

    # Main body of script
if [ "y" = "$debugmode" ] ; then
    echo "DEBUG: Debug mode statrs" 1>&2
    set -o xtrace
fi

if [ "y" = "$verbosemode" ]; then
    echo "VERBOSE: $0" 1>&2
fi

if [ $(basename $0) = setx.sh ]; then
    echo "I'm $0"
fi
    # shell trace mode off
set +x

df="'%A, %B %d'"
Date=`date +"$df"`
echo $Date
