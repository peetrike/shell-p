#!/bin/bash

#### set default levels ####
debugmode=0
verbosemode=0


#### function definitions ####
pause() {
    echo "vajuta Ctrl-C, kui tahad katkestada" >&2
    sleep 5
    echo >&2
}

debugmsg () {
    if [ 1 -eq $debugmode ]
    then
        echo "Debug: $1" >&3
        echo "Debug: $1" >&2
        pause
    fi
}

    #verbosemsg toetab detailsuse taset
    # usage: verbosemsg level message
verbosemsg () {
    if [ $verbosemode -ge $1 ]
    then
        echo "Verbose $1: $2" >&4
        echo "Verbose $1: $2" >&2
    fi
}

cleanup() {
    verbosemsg 4 "suleme failid, kui vaja"
    exec 3>&-
    exec 4>&-
    #exec 5>&-
    exit
}


#### get command line options ####
while getopts dv: OPTIONS
do
    case $OPTIONS in
        d)    	# debug mode, enable shell trace, write debug messages
            debugmode=1
            exec 3> debuglog.txt
            debugmsg "Debug mode statrs"
            #set -o xtrace
        ;;
        v)      # verbose mode, write verbose messages
            verbosemode=$OPTARG
            exec 4> verboselog.txt
            verbosemsg 1 "$0"
        ;;
    esac
done
shift $((OPTIND-1))

#### set cleanup procedure for exit ####
debugmsg "määrame puhastusprotseduuri"
trap cleanup EXIT ERR INT



#### Main body of script ####

verbosemsg 1 "$(basename $0) alustab"
debugmsg "Silumise teade 1"

verbosemsg 4 'loome CSV faili päise'
echo FileName, Size

verbosemsg 2 "vaatame kausta $1"
ls -l $1 | grep -v '^[kt]o[kt][ka][ul]' | while
    read perms links owner group size mon day time filename
do
    debugmsg "fail: $filename omanik: $owner"
    verbosemsg 3 "töötleme faili: $filename"
    echo "$filename, $size"
done

verbosemsg 4 "Kaustaga $1 valmis, jätkame"

debugmsg "Silumise teade 3"
verbosemsg 1 "$(basename $0) lõpetab"
