#!/bin/sh

ln -s "$(pwd)/.bash_profile" ~
ln -s "$(pwd)/.gitconfig" ~
ln -s "$(pwd)/.gitignore" ~
ln -s "$(pwd)/.iterm" ~

# mutt
ln -s "$(pwd)/.muttrc" ~
mkdir ~/.mutt
cp "$(pwd)/.mutt/passwords" ~/.mutt
ln -s "$(pwd)/.mutt/crypto" ~/.mutt

# tmux
ln -s "$(pwd)/.tmux.conf" ~
ln -s "$(pwd)/.tmux-line" ~
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
brew install reattach-to-user-namespace

# vim
ln -s "$(pwd)/.vim" ~
git submodule init
git submodule update

# speed up keystroke
defaults write -g KeyRepeat -int 0.5

# trash
brew install trash

# powerline
pip install --user powerline-status
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf fonts

exit 0
