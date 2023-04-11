# Backup
#	Simple shell script to make a quick backup of a folder
#

NAME="backup"
if [ $# = 3 ]; then
	NAME="backup_$3"
fi
echo "\n\n\tMaking a backup of $1 to $2 which will be named $NAME\n\tPress any key to continue or ctrl-c to abort"
read -s -n1 key
rm -rf $2/$NAME
cp -a $1 $2/$NAME
echo "\n\n\tBackup complete. Files saved to $2/$NAME\n"