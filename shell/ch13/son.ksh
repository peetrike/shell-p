#!/bin/ksh
# File: son
# The child script
OUT=$1
print "Son going to read from stdin (i.e., from dad)..." > $OUT
read r
print "Son read: $r" > $OUT
print "Son sending bye to dad" >  $OUT
print bye
print "for good!"
print "Son is done" > $OUT
