#!/bin/sh

cd1 ()
{
    cd $1
    ls -CaF
}

cd1 /tmp
