#!/bin/sh

rm ~/.bash_profile
rm ~/.gitconfig
rm ~/.gitignore

# mutt
rm ~/.muttrc
rm -r ~/.mutt

# tmux
rm ~/.tmux.conf
rm -r ~/.tmux

# vim
rm ~/.vim

# speed up keystroke
defaults delete NSGlobalDomain KeyRepeat

exit 0
