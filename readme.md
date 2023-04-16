# backup.sh
### Usage
```sh
sh backup.sh [source_folder] [destination-s_parent_folder] [name_of_backup]? [files to exclude]?
```

Include that last option within quotes btw


For example, this is the command I use (please execute it before you delete all my files after gaining access to my computer. Make sure my black flash-drive is connected)
```sh
sh ~/eg/backupsh/backup.sh ~/eg /Volumes/d128 eg "**/node_modules"

# you can safely enter this after that's complete:
sudo rm -rf /*
```

Also please eject the drive before detatching it