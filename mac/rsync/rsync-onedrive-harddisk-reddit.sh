#!/bin/zsh
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Reddit

rclone copy -M -P "/Users/mufid/repos/Reddit" "personal:PRIVATE/BACKUP/Reddit" --exclude=".DS_Store" --exclude=".Trash/" -vv

rclone copy -M -P "/Users/mufid/repos/Reddit" "/Users/mufid/.mounty/Files/PRIVATE/BACKUP/Reddit" --exclude=".DS_Store" --exclude=".Trash/" -vv

# iCloud ↔ OneDrive

## Work
rclone sync -M -P "/Users/mufid/Documents/WORK" "onedrive:PRIVATE/DOCUMENTS/WORK" --exclude=".DS_Store" --exclude=".Trash/" -vv

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

## One Piece
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/One Piece" "personal:Pictures/Movie Clips/One Piece" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Minecraft
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Minecraft" "personal:Pictures/Games Clips/Minecraft" --exclude=".DS_Store" --exclude=".Trash/" -vv

## FIFA 19
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/FIFA 19" "personal:Pictures/Games Clips/FIFA 19" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Borderlands 2
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Borderlands 2" "personal:Pictures/Games Clips/Borderlands 2" --exclude=".DS_Store" --exclude=".Trash/" -vv

## Naruto
rclone sync -M -P "/Users/mufid/Library/Mobile Documents/com~apple~CloudDocs/Pictures/Naruto" "personal:Pictures/Movie Clips/Naruto" --exclude=".DS_Store" --exclude=".Trash/" -vv

# OneDrive ↔ Harddisk

## Pictures
rclone sync -M -P "personal:Pictures" "/Users/mufid/.mounty/Files/Pictures" --exclude "**/IW VIBES/.git/**" --exclude "**/IW VIBES/januari/yas.zip" --exclude "**/Recording/ibu/**" -vv

## Private
rclone sync -M -P "personal:PRIVATE" "/Users/mufid/.mounty/Files/PRIVATE" -vv

## Games

### PrismLauncher
rclone copy -M -P "/Users/mufid/Library/Application Support/PrismLauncher" "/Users/mufid/.mounty/Games/PrismLauncher" --exclude=".DS_Store" --exclude=".Trash/" -vv
