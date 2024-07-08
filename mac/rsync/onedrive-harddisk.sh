#!/bin/zsh
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# OneDrive ↔ Harddisk

## Pictures
rclone sync -M -P "personal:Pictures" "/Volumes/HDD/Pictures" -vv

## Private
rclone sync -M -P "personal:PRIVATE" "/Volumes/HDD/PRIVATE" -vv

## Games

### PrismLauncher
rclone copy -M -P "/Users/mufid/Library/Application Support/PrismLauncher" "/Volumes/HDD/Games/PrismLauncher" --exclude=".DS_Store" --exclude=".Trash/" -vv
