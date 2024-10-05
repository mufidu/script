#!/bin/zsh
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# iCloud ↔ OneDrive

## Work
rclone sync -M -P "/Users/mufid/Documents/WORK" "onedrive:PRIVATE/DOCUMENTS/WORK" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Temps
rclone sync -M -P "/Users/mufid/Documents/TEMPS" "onedrive:PRIVATE/TEMPS" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Semester 8
rclone sync -M -P "/Users/mufid/Documents/SEMESTER 8" "personal:PRIVATE/DOCUMENTS/KULIAH/TELKOM UNIVERSITY/IF-44-01/SEMESTER 8" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Screenshots
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Screenshots" "personal:Pictures/Screenshots" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Random Vids
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Random Vids" "personal:Pictures/Random Vids" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Saved Pictures
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Saved Pictures" "personal:Pictures/Saved Pictures" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Zoom Backgrounds
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Zoom Backgrounds" "personal:Pictures/Zoom Backgrounds" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Identities
rclone sync -M -P "/Users/mufid/Documents/IDENTITIES" "personal:PRIVATE/DOCUMENTS/IDENTITIES" --exclude=".DS_Store" --exclude=".Trash/" -vv

# ## One Piece
# rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/One Piece" "personal:Pictures/Movie Clips/One Piece" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Minecraft
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Minecraft" "personal:Pictures/Games Clips/Minecraft" --exclude=".DS_Store" --exclude=".Trash/" -vv

## FIFA 19
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/FIFA 19" "personal:Pictures/Games Clips/FIFA 19" --exclude=".DS_Store" --exclude=".Trash/" -vv

# ## Borderlands 2
# rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Borderlands 2" "personal:Pictures/Games Clips/Borderlands 2" --exclude=".DS_Store" --exclude=".Trash/" -vv

# ## Naruto
# rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Naruto" "personal:Pictures/Movie Clips/Naruto" --exclude=".DS_Store" --exclude=".Trash/" -vv

# ## Attack on Titan
# rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Attack on Titan" "personal:Pictures/Movie Clips/Attack on Titan" --exclude=".DS_Store" --exclude=".Trash/" -vv

# Google Drive ↔ OneDrive

## Health Sync
rclone sync -M -P "gdrive:Health Sync Activities" "personal:PRIVATE/BACKUP/Health Sync/Health Sync Activities" -vv

rclone sync -M -P "gdrive:Health Sync Heart rate" "personal:PRIVATE/BACKUP/Health Sync/Health Sync Heart rate" -vv

rclone sync -M -P "gdrive:Health Sync Oxygen saturation" "personal:PRIVATE/BACKUP/Health Sync/Health Sync Oxygen saturation" -vv

rclone sync -M -P "gdrive:Health Sync Sleep" "personal:PRIVATE/BACKUP/Health Sync/Health Sync Sleep" -vv

rclone sync -M -P "gdrive:Health Sync Steps" "personal:PRIVATE/BACKUP/Health Sync/Health Sync Steps" -vv

rclone sync -M -P "gdrive:Health Sync Weight" "personal:PRIVATE/BACKUP/Health Sync/Health Sync Weight" -vv
