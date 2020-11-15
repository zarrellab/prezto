# Installs homebrew and necessary packages

echo 'installing xcode tools...'
xcode-select --install

echo 'installing homebrew...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo 'installing necassary apps...'
brew update

brew install base16-manager
brew install fasd
brew install font-sauce-code-pro-nerd-font
brew install git
brew install htop
brew install jenv
brew install iterm2
brew install neovim
brew install nvm
brew install openjdk
brew install phoenix
brew install python
brew install zsh

echo 'checking for issues...'
brew doctor
