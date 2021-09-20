source $HOME/.profile
                
#------------------------------------------
# Activate zsh completions
autoload -Uz compinit
compinit

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
# Init command-line fuzzy finder
## https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#------------------------------------------
# Remember recent directories with `cdr`
## https://jlk.fjfi.cvut.cz/arch/manpages/man/zshcontrib.0#REMEMBERING_RECENT_DIRECTORIES
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
## Add arg completion as menu (requires `compinit` to be run)
zstyle ':completion:*:*:cdr:*:*' menu selection

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
PATH="/usr/local/sbin:$PATH"


#------------------------------------------
# Personal scripts
PATH="$PATH:$HOME/scripts"

export PATH
