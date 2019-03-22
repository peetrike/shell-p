#!/bin/bash
debugmode=0
verbosemode=0
exec 3> debuglog.txt
exec 4> verboselog.txt
exec 5> warninglog.txt
#exec 6> errorlog.txt
#exec 4>&2

pause() {
    echo "vajuta Ctrl-C, kui tahad katkestada" >&2
    sleep 3
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
verbosemsg () {
    if [ $verbosemode -ge $1 ]
    then
        echo "Verbose $1: $2" >&4
    fi
}

verbosemode=1
debugmsg "Silumise teade 1"
verbosemsg 1 "detailne teade 1"

echo "tavaline teade STDOUT"

debugmode=1
debugmsg "Silumise režiim: $debugmode"
verbosemsg 2 "detailne teade 2"

verbosemode=3
debugmsg "Silumise teade 3"
verbosemsg 3 "detailne teade 3"
verbosemsg 4 "ei lähe kuskile"

echo "ebatavaline teade STDOUT"

debugmode=0
verbosemode=0
debugmsg "Silumise teade 4"
verbosemsg 4 "detailne teade 4"

# close files
exec 3>&-
exec 4>&-