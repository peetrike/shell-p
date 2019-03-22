# varsubex

# -- If the variable BACKUPPATH is defined in the 
# environment, use it, otherwise use $HOME/.backup

Backup_path=${BACKUPPATH:-$HOME/.backup}
cp -r * $Backup_path
