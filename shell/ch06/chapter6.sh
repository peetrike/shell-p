#!/bin/bash
echo "teeme midagi"
# siin teeme
echo -e "kas sa oled rahul? [Jah/ei] \c"
read answer

case $answer in
    "") echo "Sa vastasid jah" ;;
    [Jj][Aa][Hh]) echo "hästi"
        echo "ma siis rohkem ei tee" ;;
    ei) echo "paha lugu" ;;
    yes) echo "ok" ;;
    [Nn]) echo "too bad" ;;
    *) echo "ei saanud aru" ;;
esac
