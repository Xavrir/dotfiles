# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

export PATH=$PATH:/home/xavrir/.spicetify
export PATH="$HOME/.local/bin:$PATH"

. "$HOME/.local/share/../bin/env"

# opencode
export PATH=/home/xavrir/.opencode/bin:$PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# OpenClaw Completion
source <(openclaw completion --shell bash)

# Turso
export PATH="$PATH:/home/xavrir/.turso"
. "$HOME/.cargo/env"
export PATH=$PATH:~/go/bin
