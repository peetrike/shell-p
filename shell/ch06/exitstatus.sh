#!/bin/sh

echo "siin on teade" > memo

echo tekitame vea
cp mamo memo  # no such file error
echo $? exit code of cp command
echo $? exit code of echo command

cp memo memo2 ; echo $?  #exit code of cp command

exit 33