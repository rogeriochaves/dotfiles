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

# spacemacs
ln -s "$(pwd)/.spacemacs" ~
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-cocoa --with-gnutls --with-librsvg --with-imagemagick --with-spacemacs-icon
brew linkapps
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/evacchi/tabbar-layer ~/.emacs.d/private/tabbar

# speed up keystroke, disable press and hold, and show hidden files
defaults write -g KeyRepeat -int 1
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# trash
brew install trash

# powerline
brew install python3
pip3 install --user powerline-status
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf fonts

# utils
brew install tree
brew install translate-shell
brew install ag
brew install fzf

echo "Manual steps:"
echo "1 - Open iTerm2 preferences and check the Load Preferences checkbox pointing to ~/.iterm"
echo "2 - Go to Profiles > Text and change the font to Source Code Pro for Powerline"

exit 0
