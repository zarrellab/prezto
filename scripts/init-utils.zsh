# Install utils needed for full functionality
# Requires packages installed via init-brew.zsh

echo 'installing related utils...'

# Open Docker
if [[ $OSTYPE == darwin* ]]; then
  open /Applications/Docker.app
fi
local WINDOWS=/mnt/c/Windows
if [[ -d $WINDOWS ]]; then
  /mnt/c/Program\ Files/Docker/Docker/Docker\ Desktop.exe
fi

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

# Upgrade pip
sudo pip3 install --upgrade pip

# Neovim utils
pip3 install pynvim
npm i -g neovim

# Set java in jenv
if [[ $OSTYPE == darwin* ]]; then
  jenv add /usr/local/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home
fi
if [[ $OSTYPE == linux* ]]; then
  jenv add /usr/lib/jvm/java-11-openjdk-amd64
fi
jenv global 11
jenv enable-plugin maven
jenv enable-plugin export
if [[ $OSTYPE == darwin* ]]; then
  sudo ln -sfn $(brew --prefix)/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
fi

# Create private env file
touch ~/.zshprivate

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

echo 'Login to Docker:'
docker login
