#
# Loads the Node Version Manager and enables npm completion.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Zeh Rizzatti <zehrizzatti@gmail.com>
#

# Load NPM and known helper completions.
typeset -A compl_commands=(
  npm   'npm completion'
  grunt 'grunt --completion=zsh'
  gulp  'gulp --completion=zsh'
)

for compl_command in "${(k)compl_commands[@]}"; do
  if (( $+commands[$compl_command] )); then
    cache_file="${XDG_CACHE_HOME:-$HOME/.cache}/prezto/$compl_command-cache.zsh"

    # Completion commands are slow; cache their output if old or missing.
    if [[ "$commands[$compl_command]" -nt "$cache_file" \
          || "${ZDOTDIR:-$HOME}/.zpreztorc" -nt "$cache_file" \
          || ! -s "$cache_file" ]]; then
      mkdir -p "$cache_file:h"
      command ${=compl_commands[$compl_command]} >! "$cache_file" 2> /dev/null
    fi

    source "$cache_file"

    unset cache_file
  fi
done

unset compl_command{s,}
