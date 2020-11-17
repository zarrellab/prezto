## source config from home dir
local NVIM_INIT="${HOME}/.config/nvim/init.vim"

if [ ! -f $NVIM_INIT ]; then
  echo "creating init.vim..."
  mkdir $HOME/.config/nvim
  echo 'source $HOME/.nvimrc' > $NVIM_INIT
fi

if [ ! -f $NVIM_INIT ]; then
  echo "configuring nvim..."
  echo 'source ~/.nvimrc' > $NVIM_INIT
fi

## ensure vim-plug
local VIM_PLUG_PATH="${HOME}/.local/share/nvim/site/autoload/plug.vim"

if [ ! -f $VIM_PLUG_PATH ]; then
  echo "installing vim-plug..."
  curl -fLo ${VIM_PLUG_PATH} --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
