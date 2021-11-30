source $HOME/.aliases

# PATH
XDG_CONFIG_HOME="$HOME/.config"
XDG_DATA_HOME="$HOME/.local/share"

# Add Rust applications to path
PATH=$PATH:$HOME/.cargo/bin

# set colorscheme for `bat` command
BAT_THEME="zenburn"

# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
PATH="/usr/local/sbin:$PATH"

# Personal scripts
PATH="$PATH:$HOME/scripts"
