# Installs homebrew and necessary packages

if [[ $OSTYPE == darwin* ]]; then
  echo 'installing homebrew...'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  echo 'installing necassary packages...'
  brew update

  brew tap homebrew/cask
  brew tap homebrew/cask-versions
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
  brew install openjdk@11
  brew install phoenix
  brew install python
  brew install zsh

  echo 'checking for issues...'
  brew doctor
fi

if [[ $OSTYPE == linux* ]]; then
  echo 'installing necassary packages...'
  sudo apt update
  sudo apt install -y curl docker fasd git htop make neovim openjdk-11-jdk python3 python3-pip zsh

  git clone https://github.com/base16-manager/base16-manager.git ~/.base16-manager
  (cd ~/.base16-manager && sudo make install)

  git clone https://github.com/jenv/jenv.git ~/.jenv

  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
fi
