rewind -b
mv /storage/emulated/0/Termux/Backup/pkgs.bak ~/repos/termux-backup
cd ~/repos/termux-backup
git add .
git commit -m "backup $(date)"
git push -f
cd ~
bash -c "read -t 3 -n 1"
