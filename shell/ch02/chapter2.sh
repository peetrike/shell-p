# mõned näited peatüki teemadel

# mis protsessid praegu jooksevad
ps -f

# output/error redirect
    # töötab
rm bozzo > minu.txt 2>&1
    # ei tööta
rm bozzo > minu.txt 2&>1

    # viskame väljundi ära
echo "Tere" > /dev/null
rm bozzo 2> /dev/null
