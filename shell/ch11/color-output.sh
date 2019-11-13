#!/bin/sh

normal=$(tput sgr0)
bold=$(tput bold)
under=$(tput smul)
reverse=$(tput rev)
standout=$(tput smso)
    #from here doesn't work
italic=$(tput sitm)
wide=$(tput swidm)
dim=$(tput dim)
blink=$(tput blink)
shadow=$(tput sshm)

redback=$(tput setab 1)
redfore=$(tput setaf 1)
whitefore=$(tput setaf 15)
bluefore=$(tput setaf 4)

showclock () {
    local column=$(($(tput cols)-7))
    tput cup 0 $column
    echo "${bold}${bluefore}[${redfore}$(date +%H:%M)${bluefore}]${normal}"
}

tput sc # save cursor position
clear
echo "make yourself ready"
sleep 3

showclock
sleep 1

tput cup 10 20  # cursor position to line 10 column 20
echo "there ${redfore}is${normal} ${bold}Magic${normal}\c"
sleep 1
echo " ${under}happening${normal}\c"
sleep 1

tput cup 12 34
echo "${standout}standout${normal} and ${reverse}reverse${normal} ..."
sleep 1

tput cup 9 52
echo "${redback}${whitefore}red background?${normal}"
sleep 1

tput cup 6 48
echo "${shadow}shadow ${italic}tilted ${wide}wide${normal}"
sleep 1

tput cup 15 8
echo "${blink}blinking ${dim}dimmed?${normal}"
tput flash
sleep 1


tput rc # restore cursor position
