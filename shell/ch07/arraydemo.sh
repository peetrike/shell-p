#!/bin/bash

cat pets | while read line
do
    pet=($line)
    echo "loom ${pet[0]}, nimi ${pet[1]}"
done
