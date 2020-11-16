# Installs homebrew and necessary packages

echo 'installing homebrew...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo 'installing necassary apps...'
brew update

brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap chrokh/tap

brew install base16-manager
brew install docker-edge
brew install fasd
brew install font-sauce-code-pro-nerd-font
brew install git
brew install htop
brew install iterm2
brew install jenv
brew install neovim
brew install nvm
brew install openjdk
brew install phoenix
brew install python
brew install zsh

echo 'checking for issues...'
brew doctor
