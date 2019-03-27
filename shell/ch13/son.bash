#!/bin/bash
# The child script

OUT=$1
echo "Son going to read from stdin (i.e., from dad)..." > $OUT
read r
echo "Son read: $r" > $OUT

echo "Son sending bye to dad" >  $OUT
echo bye
echo "for good!"

# sleep 1
echo "Son is done" > $OUT
