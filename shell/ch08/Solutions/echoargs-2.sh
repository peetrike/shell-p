#!/bin/sh
#echoargs

    # option l default value
opt_l=1

    # process options
while getopts ":l" opt ; do
    case $opt in
        l) opt_l=0  # option l specified on command line
        ;;
        *) echo "Usage: $0 [-l] args..."
            exit 1
        ;;
    esac
done

    # remove processed parameters
shift $((OPTIND-1))

    # do the stuff
if [ $opt_l -eq 0 ] ; then
        # put every parameter on separate line
    for word #in "$@"
    do
        echo $word
    done
else
        # put all parameters on same line
    echo $*
fi
