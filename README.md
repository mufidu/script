# scripts written for Ubuntu

Firstly run `chmod -R 777 *`

## Run Neofetch, htop, and blessed-contrib in Konsole altogether

```bash
./all.sh
```

## Make a new shortcut for Chrome (useful if you use more than one account)

```bash
./chrome-new-shortcut.sh
```

## Enable dark mode in Chrome, without emulating it (thanks to [felipecrs](https://github.com/felipecrs/dotfiles/))

```bash
sudo ./chrome-dark-mode.sh
# Need sudo because it edits the file in /usr instead of
# the one in $HOME, which doesnt't work in my case 
```

## Fix loose object error when pushing in Git

```bash
# Edit the first line to cd to your repo directory, then
./error.sh
```
