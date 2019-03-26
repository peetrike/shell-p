while read line
do
    echo "The line you entered follows: "
    echo $line
done < named_pipe
