#!/bin/sh
# Disk usage script to be used in Windows Subsystem for Linux

for user in $*
do
    dir=$(find /mnt/c/Users/$user/ -name bash -type d 2> /dev/null)

    if [ -d "$dir" ]
    then
        num=$(du -sk $dir | cut -f1 )
        if [ 50 -le "$num" ] ; then
            cat  <<- NOTE
                Dear $user
                You have used ${num}KB (over 50KB) of disk space on directory
                $dir

                Please remove some files.
NOTE
        else
            echo "$user - everything is ok"
        fi
    else
        echo "$user - no directory found"
    fi
done
