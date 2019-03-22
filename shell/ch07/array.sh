#!/bin/ksh

    #ksh style
#set -A pets dog cat fish rabbit
    # bash style
pets=(dog cat fish rabbit)

for x in ${pets[*]}
do
    echo "My pet is a $x."
done
