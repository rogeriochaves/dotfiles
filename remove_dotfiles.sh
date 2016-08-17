#!/bin/sh

rm ~/.bash_profile
rm ~/.gitconfig
rm ~/.gitignore
rm -r ~/.iterm

# mutt
rm ~/.muttrc
rm -r ~/.mutt

# tmux
rm ~/.tmux.conf
rm -r ~/.tmux

# vim
rm ~/.vim

# emacs
rm ~/.spacemacs
rm ~/.emacs.d

# speed up keystroke
defaults delete NSGlobalDomain KeyRepeat

exit 0
