#
# Configures Ruby local gem installation, loads version managers, and defines
# aliases.
#
# Authors: Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load package manager installed rbenv into the shell session.
if (( $+commands[rbenv] )); then
  eval "$(rbenv init - --no-rehash zsh)"

# Prepend local gems bin directories to PATH.
else
  path=($HOME/.gem/ruby/*/bin(N) $path)
fi

# Return if requirements are not found.
if (( ! $+commands[rbenv] )); then
  return 1
fi

#
# Aliases
#

# General
alias rb='ruby'
