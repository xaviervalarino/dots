source $HOME/.aliases

# PATH
# Add Rust applications to path
PATH=$PATH:$HOME/.cargo/bin

# CONFIGS
XDG_CONFIG_HOME=$HOME/.config

# set colorscheme for `bat` command
BAT_THEME="zenburn"

# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
PATH="/usr/local/sbin:$PATH"

# Personal scripts
PATH="$PATH:$HOME/scripts"
