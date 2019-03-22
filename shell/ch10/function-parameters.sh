#!/bin/sh

shifter() {
    echo "  Funktsioon Shifter alustas"
    echo "meil on $# parameetrit"
    shift
    echo "nüüd on $# parameetrit"
    echo $1
}

echo "väljas on $# parameetrit"
echo "need on: $*"

shifter "$@"
echo "pärast funktsiooni: $*"

shifter -- kolm neli viis
