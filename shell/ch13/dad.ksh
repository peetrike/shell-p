#!/bin/ksh
# File: dad
# The parent script
tty=`tty`
./son.ksh $tty |&
print "Dad sending hello to son..."
print -p hello
print "Dad going to read from son..."
sleep 5
read -p r
print "Dad read: $r"
sleep 5
read -p r
print "Dad read: $r"
