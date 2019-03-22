# NOTE: This requires GNU getopt.  On Mac OS X and FreeBSD, you have to install this
# separately; see below.

aflag=no
bflag=no
cargument=none

HELP_TEXT=\
"   USAGE:\n
    Accepts - and -- flags, can specify options that require a value, and can be in any order. A double-hyphen (--) will stop processing options.\n\n

    Accepts the following forms:\n\n

    getopt-example.sh -a -b -c value-for-c some-arg\n
    getopt-example.sh -c value-for-c -a -b some-arg\n
    getopt-example.sh -abc some-arg\n
    getopt-example.sh --along --blong --clong value-for-c -a -b -c some-arg\n
    getopt-example.sh some-arg --clong value-for-c\n
    getopt-example.sh
"

# options may be followed by one colon to indicate they have a required argument
if ! options=$(getopt -o abc:h\? -l along,blong,clong:,help -- "$@")
then
    # something went wrong, getopt will put out an error message for us
    exit 1
fi

# Note the quotes around `$options': they are essential!
eval set -- "$options"

while [ $# -gt 0 ]
do
    case $1 in
        -a|--along) aflag="yes" ;;
        -b|--blong) bflag="yes" ;;
            # for options with required arguments, an additional shift is required
        -c|--clong) cargument="$2" ; shift;;
        -h|--help|-\?) echo -e $HELP_TEXT; exit;;
        (--) shift; break;;
        (-*) echo "$0: error - unrecognized option $1" 1>&2; exit 1;;
        (*) break;;
    esac
    shift
done

echo aflag=${aflag}
echo bflag=${bflag}
echo cargument=${cargument}
