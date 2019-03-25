#!/bin/bash
# Parameter Substitution extended in bash shell

# substring with offset
file=script.sh
echo ${file: -3}

# substring with pattern
file=script.sh.txt
echo ${file/*.}
echo ${file/.*}
echo ${file/.*/.bash}

# substitute with operator
echo ${file@E}
echo ${file@A}
echo ${PS1@P}
