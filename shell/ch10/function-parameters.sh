#!/bin/sh

shifter() {
    local ajutine
    echo "  Funktsioon Shifter alustas"
    echo "meil on $# parameetrit"
    ajutine=$1
    shift
    echo "nüüd on $# parameetrit"
    echo $1
    echo "kadunud parameeter: $ajutine"
}

echo "skriptis on $# parameetrit"
echo "need on: $*"

shifter "$@"
echo "pärast funktsiooni: $*"

echo
echo proovime uute parameetritega
shifter -- yks kaks kolm
