#!/bin/sh
# see kript teeb midagi olulist

ls
    # see on kommentaar
date
pwd # rea lõpu kommentaar

# output/error redirect
# töötab
rm bozzo > minu.txt 2>&1
#ei tööta
rm bozzo > minu.txt 2&>1

    # viskame väljundi ära
echo "Tere" > /dev/null
rm bozzo 2> /dev/null
