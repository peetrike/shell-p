#!/bin/bash

miski() {
    local minu=23           #dash/bash
    typeset korn="ehhee"    #ksh/bash
    local override="funktsioon" # see muutuja on lokaalne muutuja, mis peidab globaalse
    global="vahetatud"      # kirjutan globaalse muutuja väärtuse üle
    uus="uus muutuja"
    echo "funktsioonis: " $minu $korn $global $override $uus
}

global=algne
override=skript

echo "skriptis, enne funktsiooni: " ${minu-minu puudub} ${korn-korn puudub} $global $override ${uus-uus puudub}

miski

echo "skriptis, pärast funktsiooni: " ${minu-minu puudub} ${korn-korn puudub} $global $override ${uus-uus puudub}
