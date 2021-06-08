#!/bin/sh

DOT_FILES="\
	.bashrc\
	.bash_aliases\
	.tmux.conf\
	.vimrc\
	"

for i in $DOT_FILES 
do
    ln -s $HOME/dotfiles/$i $HOME/$i
done

echo "一部のaliasには以下のパッケージが必要"
echo "・translate-shell"
echo "・googler"
echo "・xsel"

echo "sudo apt install trans googler xsel"
