#File: copyto
if [ $# -ne 1 ] ; then
   echo "Usage: $0 file"
   exit 1
fi
# ftp to another computer, turn off
# interactive mode and prevent auto-login
ftp -in some_computer_name<<FTP_CMD
user user_name password
binary
put $1
quit
FTP_CMD
