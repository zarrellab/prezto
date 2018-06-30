#! /bin/zsh 

source "${HOME}/.zprezto/modules/zsh/znvm/loadnvmrc.sh"
source "${HOME}/.zprezto/modules/zsh/znvm/znvm.conf.sh"

znvm_contains_elem () {
  local e match="$1"
  shift
  for e; do [[ "$match" =~ "$e\ +.*|$e" ]] && return 0; done
  return 1
}

znvm_load_pre_exec () {
 	if znvm_contains_elem "$1" "${ZNVM_PREEXEC[@]}"; then
 		load-nvm
	fi
}
add-zsh-hook preexec znvm_load_pre_exec

export ZNVM_ACTIVE="ZNVM"
