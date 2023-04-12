# Backup
#	Simple shell script to make a quick backup of a folder

# Usage:
#	sh backup.sh source_dir destination_parent_dir [optional_backup_name]


if [ $# = 3 ]; then
	NAME="backup_$3"
else
	NAME="backup"
fi

C="\033[0;1;36m"
N="\033[0m"

echo "\n\n\tMaking a backup of $C$1$N to $C$2$N under the sub-folder $C$NAME$N
\t${C}Press any key$N to begin or ctrl-c to abort"
read -s -n1 key

rm -rf $2/$NAME
{
	rsync -avzhP --stats $1 $2/$NAME &&
	echo "\n\n\tBackup complete. Files saved to $C$2/$NAME$N\n" &&
	date >> $2/$NAME/backup-date.txt
} ||

echo "\n\n\t${C}Oh gosh$N\n\tSomething went horribly wrong.\n"
