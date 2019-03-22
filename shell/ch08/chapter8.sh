echo "The script name: $(basename $0)"
echo "Total number of arguments: $#"

echo "All arguments as individual words:"
for katse1 in $*
do
    echo $katse1
done

echo "All arguments as originally quoted:"
for katse2 #in "$@"
do
    echo $katse2 
done

while [ "X" != "X$1" ]
do
    echo "Parameeter: $1"
    shift
done
