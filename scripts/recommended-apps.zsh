# Install recommended apps
# Must have homebrew installed (in init-brew.sh)

if [[ $OSTYPE == darwin* ]]; then
  echo 'installing recommended brew apps...'
  brew update

  brew tap homebrew/cask-drivers

  brew install 1password
  brew install 1password-cli
  brew install awscli
  brew install brotli
  brew install chromedriver
  brew install cmake
  brew install figma
  brew install firefox
  brew install firefox-developer-edition
  brew install fzf
  brew install gifox
  brew install gnupg
  brew install google-chrome
  brew install htop
  brew install iterm2
  brew install logitech-options
  brew install mas
  brew install microsoft-edge
  brew install miro
  brew install openjdk@8
  brew install pigz
  brew install pipenv
  brew install postman
  brew install quicklook-csv
  brew install quicklook-json
  brew install ripgrep
  brew install rustup
  brew install sequel-pro
  brew install slack
  brew install spotify
  brew install the-unarchiver
  brew install tldr
  brew install vagrant
  brew install virtualbox
  brew install visual-studio-code
  brew install wget
  brew install wrk

  echo 'checking for issues...'
  brew doctor

  echo 'installing recommended apps from app store...'
  echo 'NOTE: you may need to sign into app store first'
  mas lucky amphetamine

  echo 'installing iterm utils...'
  # iterm shell integration
  curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | zsh
fi
if [[ $OSTYPE == linux* ]]; then
  echo 'installing recommended apps...'
  sudo apt update
  sudo apt install -y awscli brotli cmake fzf gnupg htop openjdk-8-jdk pigz pipenv ripgrep tldr vagrant virtualbox wget
  
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | zsh
fi

echo 'installing related utils...'
# base16 for fzf
base16-manager install nicodebo/base16-fzf

# Jenv add new versions
if [[ $OSTYPE == darwin* ]]; then
  jenv add /usr/local/opt/openjdk@8/libexec/openjdk.jdk/Contents/Home
  sudo ln -sfn $(brew --prefix)/opt/openjdk/libexec/openjdk.jdk@8 /Library/Java/JavaVirtualMachines/openjdk-8.jdk
fi
if [[ $OSTYPE == linux* ]]; then
  add /usr/lib/jvm/java-8-openjdk-amd64
fi
