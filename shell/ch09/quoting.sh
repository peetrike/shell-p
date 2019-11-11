#!/bin/sh

# quoting: \
echo the \\ escapes the next character

color=red\ white\ and\ blue
echo the value of \$color is $color

echo one two \
three four

# quoting: '
color='red white and blue'
echo 'the value of \$color is $color'

echo 'the value of $color is' $color

echo *
echo '*******************'


# quoting: "
color="red white and blue"
echo "the value of \$color is $color"

curdir="$LOGNAME – Your current dir is $(pwd) "
echo $curdir

echo "they're all here: \\, ', \" "
