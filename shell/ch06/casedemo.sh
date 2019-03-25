#!/bin/sh

echo "teeme midagi"
# siin teeme
echo -e "kas sa oled rahul? [Jah/ei] \c"
read answer junk
unset junk

case $answer in
    "") echo "Sa valisid vaikeväärtuse [Jah]" ;;
    [Jj][Aa][Hh]) echo "hästi"
        echo "ma siis rohkem ei tee" ;;
    ei) echo "paha lugu" ;;
    yes) echo "ok" ;;
    [Nn]) echo "too bad" ;;
    *) echo "teine kord siis" ;;
esac
