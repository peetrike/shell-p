#!/bin/ksh

FPATH=$FPATH:.
#typeset -fu
autoload

echo list of defined functions before running day
typeset +f

day

echo list of defined functions after running day
typeset +f
