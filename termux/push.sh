cd ~/storage/shared/notes
git add .
git commit -m "termux on $(date)"
git push origin master
cd ~
exit
bash -c "read -t 3 -n 1"
