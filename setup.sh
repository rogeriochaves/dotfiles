#!/bin/sh

ln -s "$(pwd)/.bash_profile" ~/.bash_profile
ln -s "$(pwd)/.gitconfig" ~/.gitconfig
ln -s "$(pwd)/.gitignore" ~/.gitignore

# mutt
ln -s "$(pwd)/.muttrc" ~/.muttrc
mkdir ~/.mutt
cp "$(pwd)/.mutt/passwords" ~/.mutt/passwords
ln -s "$(pwd)/.mutt/crypto" ~/.mutt/crypto

# tmux
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
brew install reattach-to-user-namespace

exit 0
