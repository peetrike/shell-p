:
# Adapted from A Practical Guide to the UNIX System,
# Mark Sobell, 1989, p. 261.
# Adapted from lock.sh by Howard G Port and
# Evelyn Siwakowsky
# UNIX World, III:4 (Apr 1986), p. 74, Fig. 3

trap '' 1 2 3
stty -echo
echo "Key: \c"
read key_1
echo
echo "Again: \c"
read key_2
echo
key_3=
if [ "$key_1" = "$key_2" ]
then
    tput clear
    ./lockbanner &
    pid=$!
    until [ "$key_3" = "$key_2" ]
    do
        read key_3
    done
    kill -16 $pid
else
    echo "locktty: keys do not match" 1>&2
fi
stty echo
