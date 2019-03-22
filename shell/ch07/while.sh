#!/bin/sh

while
#until
    ls > /dev/null
do
    echo "ahhaa"
    sleep 3
done

X=1
while [ $X -le 10 ]
do
    echo "X on $X"
    X=$((X+1))
done

X=1
until [ $X -gt 10 ]
do
    echo "X on $X"
    X=$((X+1))
done


while :
do
    echo "Teeme"
    sleep 2
    echo -e "Tahad lõpetada? [j/e] \c"
    read answer
    if [ "Xj" = "X$answer" ] ; then
        echo "hea küll, lõpetame"
        break
    fi
done
echo "tehtud"

# sama asi teist moodi
until
    echo -e "Tahad lõpetada? [j/e] \c"
    read answer
    [ "Xj" = "X$answer" ]
do
    echo "Teeme"
    sleep 2
done
echo "tehtud"




while true
do
    echo "Teeme"
    sleep 2
    echo -e "Tahad lõpetada? [j/e] \c"
    read answer
    case $answer in
        [Jj]*)
            echo "hea küll, lõpetame"
            break
            ;;
        [Ee]*)
            continue
            ;;
    esac
    echo "teeme midagi veel, kui ei ole jah/ei"
done
echo "tehtud"


# töötleme faili sisu
cat asjad.txt | while read rida
do
    echo "Rida: $rida"
done


while read rida
do
    echo "Rida: $rida"
done < asjad.txt


ls -al | while read rida
do
    echo $rida
done
