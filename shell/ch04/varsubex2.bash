# varsubex2

#-- Extract the name of file $1 minus the . extension

File=${1%.*}
echo $File
