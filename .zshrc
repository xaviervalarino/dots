source $HOME/.profile
                
#------------------------------------------

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#------------------------------------------
# History
## Set history size
export HISTSIZE=10000
## Save history after logout
export SAVEHIST=10000
## History file
export HISTFILE=~/.zhistory
## Append into history file
setopt INC_APPEND_HISTORY
## Save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
## Add timestamp for each entry
setopt EXTENDED_HISTORY   

#------------------------------------------

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#------------------------------------------
# Remember recent directories
# https://wiki.archlinux.org/index.php/zsh
# TODO: maybe `cdr` would be better?
# https://jlk.fjfi.cvut.cz/arch/manpages/man/zshcontrib.1#REMEMBERING_RECENT_DIRECTORIES
autoload -Uz add-zsh-hook

DIRSTACKFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/dirs"
if [[ -f "$DIRSTACKFILE" ]] && (( ${#dirstack} == 0 )); then
	dirstack=("${(@f)"$(< "$DIRSTACKFILE")"}")
	[[ -d "${dirstack[1]}" ]] && cd -- "${dirstack[1]}"
fi
chpwd_dirstack() {
	print -l -- "$PWD" "${(u)dirstack[@]}" > "$DIRSTACKFILE"
}
add-zsh-hook -Uz chpwd chpwd_dirstack

DIRSTACKSIZE='20'

setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME

## Remove duplicate entries
setopt PUSHD_IGNORE_DUPS

## This reverts the +/- operators.
setopt PUSHD_MINUS

#------------------------------------------
# Prompt
fpath+="$XDG_CONFIG_HOME/zsh/functions/pure"
autoload -Uz promptinit
promptinit
zstyle :prompt:pure:git:branch color cyan
prompt pure
PROMPT='%(1j.[%j] .)%(?.%F{magenta}.%F{red})${PURE_PROMPT_SYMBOL:-❯}%f '


#------------------------------------------
# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/usr/local/sbin:$PATH"
