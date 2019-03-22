#!/bin/bash

miski() {
    local minu=23           #bash/Dash
    typeset korn="ehhee"    #ksh
    local override="funktsioon" # see muutuja on lokaalne muutuja, mis peidab globaalse
    global="vahetatud"      # kirjutan globaalse muutuja väärtuse üle
    uus="uus muutuja"
    echo "funktsioonis: " $minu $korn $global $override $uus
}

global=siin
override=skript

echo "väljas, enne funktsiooni: " $minu $korn $global $override $uus

miski

echo "väljas, pärast funktsiooni: " $minu $korn $global $override $uus