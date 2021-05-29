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
