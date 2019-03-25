#!/bin/sh
# stderr_test
{
    echo "This goes to standard error."
    echo "So does this line!"
} 1>&2

echo "veel üks rida" 1>&2
ls


teavitus() {
    echo $1 >&2
}

teavitus "see on veateade"
