#!/bin/ksh
# shellchooser
PS3="Which shell would you like?"
select ans in $(cat /etc/shells | tail -n +2 | xargs basename -a) exit
do
  if [ "$REPLY" -lt 1 -o "$REPLY" -gt $(cat /etc/shells | wc -l) ]; then
    echo "Invalid choice.  Program ending. "
    exit 1
  fi
  echo "Invoking the $ans shell..."
  $ans
done
