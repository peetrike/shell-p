# opt_ex

while getopts ":a:bc" opt
do
    case $opt in
    a) echo "This is option a. It requires an argument!!"
        echo "The argument to 'a' is $OPTARG.";;
    b) echo "This is option b. No arguments. " ;;
    c) echo "This is option c. No arguments. " ;;
    \?) echo "Usage: $0 [-a arg] [-b] [-c] args..."
        exit 1
    esac
done
shift `expr $OPTIND - 1`
echo "Arguments to $0 are: $*"
