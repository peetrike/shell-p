#!/bin/sh
# disk_usage
for user in $*
do
  num=$(du -sk /mnt/c/Users/${user}/shell | cut -f1 )
  if [ 50 -le "$num" ] ; then
    cat  <<- EOF
	You have used ${num}KB (over 50KB) of disk space!
	Please remove some files. 
EOF
  fi
done
