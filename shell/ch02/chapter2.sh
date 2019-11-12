# mõned näited peatüki teemadel

# type käsu näited
type ls
type sh
type echo

# mis protsessid praegu jooksevad
ps -f

# taustatööd
sleep 30 &
jobs


# output/error redirect
    # töötab
rm bozzo > minu.txt 2>&1
    # ei tööta
rm bozzo > minu.txt 2&>1

    # viskame väljundi ära
echo "Tere" > /dev/null
rm bozzo 2> /dev/null
