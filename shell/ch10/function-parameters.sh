#!/bin/sh

shifter() {
    echo "  Funktsioon Shifter alustas"
    echo "meil on $# parameetrit"
    shift
    echo "nüüd on $# parameetrit"
    echo $1
}

echo "skriptis on $# parameetrit"
echo "need on: $*"

shifter "$@"
echo "pärast funktsiooni: $*"

echo
echo proovime uute parameetritega
shifter -- yks kaks kolm
