#!/bin/ksh

# initialize option-related variables
do_link=true
debug=""
link_libs=""
clib="-lc"
exefile=""
opt=false


# process command-line options
while getopts "cgl:[lib]o:[outfile]O files ..." option; do
    case $option in
        c )    do_link=false ;;
        g )    debug="-g" ;;
        l )    link_libs+=" -l $OPTARG" ;;
        o )    exefile="-o $OPTARG" ;;
        O )    opt=true ;;
    esac
done
shift $(($OPTIND - 1))

# process the input files
objfiles=""
for filename in "$@"; do
    case $filename in
        *.c )
            objname=${filename%.c}.o
            ccom $debug "$filename" "$objname"
            if [[ $opt == true ]]; then
                optimize "$objname"
            fi ;;
        *.s )
            objname=${filename%.s}.o
            as "$filename" "$objname" ;;
            if [[ $opt == true ]]; then
                optimize "$objname"
            fi ;;
        *.o )
            objname=$filename ;;
        *   )
            print "error: $filename is not a source or object file."
            exit 1 ;;
    esac
    objfiles+=" $objname"
done

if [[ $do_link == true ]]; then
    ld $exefile $objfiles $link_libs $clib
fi