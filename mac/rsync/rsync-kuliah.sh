#!/bin/zsh
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# iCloud ↔ OneDrive

## Semester 8
rclone sync -M -P "/Users/mufid/Documents/SEMESTER 8" "telkom:PRIVATE/DOCUMENTS/KULIAH/TELKOM UNIVERSITY/IF-44-01/SEMESTER 8" --exclude=".DS_Store" --exclude=".Trash/" -vv
