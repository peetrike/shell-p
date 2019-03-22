#!/bin/bash

miski() {
    echo yks
    echo kaks
}

miski | wc -l

valjund=$(miski)
echo $valjund

miski

echo valmis