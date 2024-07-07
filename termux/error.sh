cd ~/storage/shared/notes
find .git/objects/ -type f -empty | xargs rm
git fetch -p
git fsck --full
cd ~
bash -c "read -t 3 -n 1"
