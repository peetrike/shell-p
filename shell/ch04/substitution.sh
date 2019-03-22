date +%y%m%d

mydate=$(date +%y%m%d)
    # või siis
mydate=`date +%y%m%d`
    
touch ${mydate}.txt
