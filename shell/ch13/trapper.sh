trap "echo Ei!!!" HUP INT TERM
trap "echo Goodbye!" EXIT

count=0
until [ $count = 150 ]
do
   echo -n "."
   count=$((count + 1))
   sleep 1
done
echo Done
