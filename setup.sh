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

echo "$B0lIt$N(Balias$B$K$O0J2<$N%Q%C%1!<%8$,I,MW(B"
echo "$B!&(Btranslate-shell"
echo "$B!&(Bgoogler"
echo "$B!&(Bxsel"

echo "sudo apt install trans googler xsel"
