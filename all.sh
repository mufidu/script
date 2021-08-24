#!/bin/sh
konsole --noclose -e $HOME/repos/script/blessed.sh & sleep 1s && konsole --noclose -e $HOME/repos/script/htop.sh & sleep 2s && konsole --noclose -e $HOME/repos/script/neofetch.sh
