#!/bin/sh

#for file in $(ls -a $HOME)
for file in $(find $HOME)  #$HOME/*
do
    if [ -f $file ]
    then
        file $file
    else
        echo "see on kaust (vist): $file"
    fi
done
