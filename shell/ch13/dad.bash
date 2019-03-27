#!/bin/bash
# The parent script

tty=$(tty)
coproc son { ./son.bash $tty ; }

echo "Dad sending hello to son..."
echo hello >&${son[1]}

echo "Dad going to read from son..."
# sleep 1
while read r
do
    echo "Dad read: $r"
    # sleep 1
done <&${son[0]}

echo "Dad is done!"
