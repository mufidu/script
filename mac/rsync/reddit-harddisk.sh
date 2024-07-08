#!/bin/zsh
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Reddit

rclone copy -M -P "/Users/mufid/repos/Reddit" "personal:PRIVATE/BACKUP/Reddit" --exclude=".DS_Store" --exclude=".Trash/" -vv

rclone copy -M -P "/Users/mufid/repos/Reddit" "/Users/mufid/.mounty/Files/PRIVATE/BACKUP/Reddit" --exclude=".DS_Store" --exclude=".Trash/" -vv
