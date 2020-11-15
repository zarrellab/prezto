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
