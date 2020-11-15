# Initializes what's needed for the Prezto setup
# Requires packages installed via init-brew.zsh

echo 'linking config files...'
echo 'NOTE: if you already have any of the given configuration files, this will move them to backup location'
setopt EXTENDED_GLOB

local backup_dir=${HOME}/zsh-backup-$(date +%s)

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  if [[ -s $HOME/.${rcfile:t} ]]; then
    echo "${rcfile:t} already exists. moving existing file to backup directory: ${backup_dir}..."
    mkdir $backup_dir
    mv $HOME/.${rcfile:t} $backup_dir
  fi
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  echo "${rcfile:t} successfully linked"
done

echo 'linking iterm2 colors...'
ln -s $HOME/.zprezto/modules/zsh/base16-iterm2 $HOME/base16-iterm2

echo 'ensuring module updates...'
zprezto-update

echo 'setting zsh as default user shell...'
chsh -s /usr/local/bin/zsh
