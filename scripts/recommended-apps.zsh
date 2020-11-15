# Install recommended apps
# Must have homebrew installed (in init-brew.sh)

echo 'installing recommended brew apps...'
brew update

brew tap homebrew/cask-drivers

brew cask install docker-edge

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
brew install openjdk@11
brew install openjdk@8
brew install pigz
brew install pipenv
brew install postman
brew install python
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

echo 'installing related utils...'
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | zsh
