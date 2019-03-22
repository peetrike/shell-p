# File: save_old

# Move the command line arg files to old directory.
#
if [ $# -eq 0 ]
then
   echo "Usage: $0 file ..."
   exit 1
fi
if [ ! -d old ]
then 
   echo "Directory 'old' does not exist."
   exit 2
fi
echo The following files will be saved in the old directory:
echo $*
for p in $*
do
   mv $p old/$p
   chmod 400 old/$p
done
ls -l old
