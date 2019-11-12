#!/bin/sh

bang=$(head -n 1 $0 | grep -E '^#!' | cut -c3-)
if [ -n "$bang" ]; then
    echo "Magic bang states:" ${bang%% *}
fi

ps $$ | tail -n 1 | while
    read pid tty stat time command
do
    command=${command##-}
    runner=$(command -v ${command%% *})
    echo "This script runs with:" $runner
done
