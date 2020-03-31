#!/bin/sh

for i in .[a-z]*
do
    ln -s $HOME/dotfiles/$i $HOME/$i
done
