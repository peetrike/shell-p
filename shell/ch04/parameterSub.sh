#!/bin/sh
# Parameter Substitution in POSIX shell

# substitute, if not set
foo=asdf
echo ${foo-bar}xyz}
foo=
echo ${foo-bar}xyz}
unset foo
echo ${foo-bar}xyz}

Backup_path=${BACKUPPATH:-$HOME/.backup}
cp -r * $Backup_path


# assign if not set
unset X
echo ${X:=abc}
echo $X


# error if not set
unset posix
echo ${posix:?}


# substring match left
x=/one/two/three.txt
echo ${x#*/}
echo ${x##*/}
echo $(basename $x)


# substring match right
x=file.c
echo ${x%.c}.o

file=${1%.*}
echo $file


# the lenght of string
input="hello world"
echo ${#input}
