
. "$HOME/.local/share/../bin/env"

# Omarchy scripts (needed for Waybar clicks / Hyprland binds)
export OMARCHY_PATH="$HOME/.local/share/omarchy"
case ":$PATH:" in
  *":$OMARCHY_PATH/bin:"*) ;;
  *) export PATH="$OMARCHY_PATH/bin:$PATH" ;;
esac
. "$HOME/.cargo/env"
