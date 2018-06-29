#
# Loads the Node Version Manager and enables npm completion.
#

# Load znvm script for faster load times
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
source $HOME/.znvm/znvm.sh

# Return if requirements are not found.
if (( ! $+commands[node] )); then
  return 1
fi

# Load NPM completion.
if (( $+commands[npm] )); then
  cache_file="${TMPDIR:-/tmp}/prezto-node-cache.$UID.zsh"

  if [[ "$commands[npm]" -nt "$cache_file" || ! -s "$cache_file" ]]; then
    # npm is slow; cache its output.
    npm completion >! "$cache_file" 2> /dev/null
  fi

  source "$cache_file"

  unset cache_file
fi
