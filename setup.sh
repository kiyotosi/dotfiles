#!/bin/sh


DOT_FILES="\
	.bashrc\
	.bash_aliases\
	.fbtermc\
	.uim\
	.tmux.conf\
	.vimrc\
	.w3m/keymap\
	"

for i in $DOT_FILES 
do
    ln -s $HOME/dotfiles/$i $HOME/$i
done
