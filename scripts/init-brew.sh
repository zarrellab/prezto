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

echo 'installing related utils...'
# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Base16 color tools
base16-manager install chriskempson/base16-shell
base16-manager install chriskempson/base16-vim
base16-manager set spacemacs
# Node in node version manager
nvm
nvm install lts
npm i -g npm
# Neovim utils
pip3 install pynvim
npm i -g neovim
