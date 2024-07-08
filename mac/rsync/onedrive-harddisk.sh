#!/bin/zsh
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# OneDrive ↔ Harddisk

## Pictures
rclone sync -M -P "personal:Pictures" "/Users/mufid/.mounty/Files/Pictures" --exclude "**/IW VIBES/.git/**" --exclude "**/IW VIBES/januari/yas.zip" --exclude "**/Recording/ibu/**" -vv

## Private
rclone sync -M -P "personal:PRIVATE" "/Users/mufid/.mounty/Files/PRIVATE" -vv

## Games

### PrismLauncher
rclone copy -M -P "/Users/mufid/Library/Application Support/PrismLauncher" "/Users/mufid/.mounty/Games/PrismLauncher" --exclude=".DS_Store" --exclude=".Trash/" -vv
