# dotfiles

Personal dotfiles backup — Arch Linux + Hyprland (Omarchy).

## Contents

`.config/` directories:

- **Desktop / WM:** `hypr`, `waybar`, `walker`, `mako`, `swayosd`, `picom`, `uwsm`, `omarchy`
- **Terminals:** `alacritty`, `ghostty`, `kitty`
- **Shell / prompt:** `fish`, `starship.toml`
- **Editors:** `nvim`, `zed`
- **Tools:** `tmux`, `btop`, `fastfetch`, `cava`, `fontconfig`, `environment.d`

`home/` — top-level shell dotfiles (`.bashrc`, `.bash_profile`, `.zshrc`, `.profile`).

## Restore

Clone and run the install script (symlinks everything into place):

```sh
git clone <repo-url> ~/dotfiles
cd ~/dotfiles
./install.sh
```

The script backs up any existing files to `~/.dotfiles-backup/` before linking.

## Notes

Secrets, caches, browser profiles, and app data are intentionally excluded.
The `omarchy` framework's bundled backgrounds/themes images are not included —
reinstall Omarchy for those; only personal theme selection and hooks are kept.
