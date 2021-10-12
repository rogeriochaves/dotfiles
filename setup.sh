#!/bin/sh

brew install cask

ln -s "$(pwd)/.bash_profile" ~
ln -s "$(pwd)/.gitconfig" ~
ln -s "$(pwd)/.gitignore" ~
ln -s "$(pwd)/.git-prompt.sh" ~

# ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s "$(pwd)/.zshrc" ~

# iterm
ln -s "$(pwd)/.iterm" ~
brew install iterm2

# tmux
ln -s "$(pwd)/.tmux.conf" ~
ln -s "$(pwd)/.tmux-line" ~
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
brew install reattach-to-user-namespace

# speed up keystroke, disable press and hold, and show hidden files
defaults write -g KeyRepeat -int 1
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# trash
brew install trash

# powerline
pip3 install --user powerline-status
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf fonts

# utils
brew install tree
brew install ag
brew install fzf

echo "Manual steps:"
echo "1 - Open iTerm2 preferences and check the Load Preferences checkbox pointing to ~/.iterm"
echo "2 - Go to Profiles > Text and change the font to Source Code Pro for Powerline"

exit 0
