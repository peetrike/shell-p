#!/bin/bash
#!/bin/ksh

PS3="vali shell, mida käivitada: "

    # see garanteerib, et kui vastus on tekst, siis me muudame selle numbriks 0
typeset -i REPLY

    # soovi korral asenda "exit" muutujaga $SHELL või järgnevaga:
    # $(grep $LOGNAME /etc/passwd | cut -d: -f7)
select shell in exit $(cat /etc/shells | tail -n +2)
do
    if [ "exit" = "$shell" ]; then
        break
    fi
    if [ $REPLY -gt 1 ] && [ $REPLY -le $(cat /etc/shells | wc -l) ] ; then
            #eemalda siit reast echo, kui tahad tegelikult muuta
        echo chsh -s $shell
        break
    fi
    echo "vale valik, proovi uuesti"
done
