# Install utils needed for full functionality
# Requires packages installed via init-brew.zsh

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
nvm install --lts
npm i -g npm

# Neovim utils
pip3 install pynvim
npm i -g neovim

# Set java in jenv
jenv add /usr/local/opt/openjdk/libexec/openjdk.jdk/Contents/Home
jenv global 15
jenv enable-plugin maven
jenv enable-plugin export
sudo ln -sfn $(brew --prefix)/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# Create private env file
touch ~/.zshprivate

# Open Docker
open /Applications/Docker.app

echo 'Setting up git...'

echo 'Enter your full name:'
read name

echo 'Enter your email:'
read email

git config --global user.name $name
git config --global user.email $email
git config --global core.editor nvim
git config --global init.defaultBranch main

echo '============================'
echo 'Here is your git config:'
git config --list
