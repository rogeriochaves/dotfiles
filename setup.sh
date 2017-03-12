#!/bin/sh

brew install cask

ln -s "$(pwd)/.bash_profile" ~
ln -s "$(pwd)/.gitconfig" ~
ln -s "$(pwd)/.gitignore" ~
ln -s "$(pwd)/.git-prompt.sh" ~

# iterm
ln -s "$(pwd)/.iterm" ~
brew cask install iterm2

# gpgtools
brew install gpg
brew cask install gpgtools

# mutt
ln -s "$(pwd)/.muttrc" ~
mkdir ~/.mutt
cp "$(pwd)/.mutt/passwords" ~/.mutt
ln -s "$(pwd)/.mutt/crypto" ~/.mutt

# tmux
ln -s "$(pwd)/.tmux.conf" ~
ln -s "$(pwd)/.tmux-line" ~
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
brew install reattach-to-user-namespace

# vim
ln -s "$(pwd)/.vim" ~
mkdir ~/.vim/tmp
git submodule init
git submodule update

# spacemacs
ln -s "$(pwd)/.spacemacs" ~
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-cocoa --with-gnutls --with-librsvg --with-imagemagick --with-spacemacs-icon
brew linkapps
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/evacchi/tabbar-layer ~/.emacs.d/private/tabbar

# speed up keystroke
defaults write -g KeyRepeat -int 0.5

# trash
brew install trash

# powerline
brew install python
pip install --user powerline-status
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf fonts

# seil
echo "Seil will now be downloaded, please install it and map capslock to F10 (109)"
brew install wget
wget https://pqrs.org/osx/karabiner/files/Seil-12.1.0.dmg && open Seil-12.1.0.dmg

# utils
brew install tree
brew install translate-shell
brew install ag

exit 0
