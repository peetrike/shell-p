#!/bin/ksh

# usage: phaser4 [ options ] files
#   -k, --kill                  use kill setting (default)
#   -l n, --level n             set phaser level (default = 2)
#   -s, --stun                  use stun-only setting
#   -t [lf], --tricorder [lf]   tricorder mode, opt. scan for life form lf

USAGE=$'[-?\n@(#)$Id: phaser4 (Starfleet Research and Development)'
USAGE+=$' Stardate 57234.22 $\n]'
USAGE+="[-author?J. Programmer <J.Prog@r-d.starfleet.mil.fed>]"
USAGE+="[-copyright?Copyright (c) Stardate 57000 Starfleet.]"
USAGE+="[-license?http://www.starfleet.mil.fed/weapons-license.xml23]"
USAGE+="[+NAME?phaser4 --- combined phaser and tricorder]"
USAGE+="[+DESCRIPTION?The \aphaser4\a program combines the operation "
USAGE+="of the \aphaser3\a and \atricorder\a programs in one handy tool.]"
USAGE+="[k:kill?Use kill setting (default).]"
USAGE+="[l:lev*el]#[level:=2?Set the phaser level.]{
                [0-2?non-lethal settings]
                [3-10?lethal, use with caution]
}"
USAGE+="[s:stun?Stun-only.]"
USAGE+="[t:tricorder?Tricorder mode.]:?[life_form]"
USAGE+=$'\n\nfile ...\n\n'
USAGE+=$'[+SEE ALSO?\aphaser3\a(1), \atricorder\a(1)]'

kill=1 stun=0 level=2   # defaults
tricorder=0 phaser=1
life_form=
while getopts "$USAGE" optchar ; do
    case $optchar in
    k)  kill=1 stun=0 ;;
    s)  kill=0 stun=1 ;;
    l)  level=$OPTARG
        if ((level < 0)) ; then level=0 ; fi
        if ((level > 10)) ; then level=10 ; fi
        ;;
    t)  phaser=0 tricorder=1
        life_form=${OPTARG:-"general_unknown"}
        ;;
    esac
done

print kill=$kill
print stun=$stun
print level=$level
print phaser=$phaser
print tricorder=$tricorder
print life_form=$life_form
