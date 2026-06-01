#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:/home/xavrir/.spicetify

. "$HOME/.local/share/../bin/env"

# Omarchy scripts (needed for Waybar clicks / Hyprland binds)
export OMARCHY_PATH="$HOME/.local/share/omarchy"
case ":$PATH:" in
  *":$OMARCHY_PATH/bin:"*) ;;
  *) export PATH="$OMARCHY_PATH/bin:$PATH" ;;
esac

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Auto-start Hyprland when logging in on TTY1.
# (Use another TTY if you need a pure console session.)
if [[ -z "${WAYLAND_DISPLAY:-}" && -z "${DISPLAY:-}" && -z "${SSH_CONNECTION:-}" ]]; then
  if [[ "${XDG_VTNR:-}" == "1" || "$(tty 2>/dev/null)" == "/dev/tty1" ]]; then
    exec uwsm start hyprland.desktop
  fi
fi
. "$HOME/.cargo/env"
