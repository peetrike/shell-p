# varsubex2

# -- If the variable BACKUPPATH is defined in the 
# environment, use it, otherwise use $HOME/.backup

Backup_path=${BACKUPPATH:-$HOME/.backup}
cp -r * $Backup_path


#-- Extract the name of file $1 minus the . extension

File=${1%.*}
echo $File
