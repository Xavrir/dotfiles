#!/usr/bin/env bash
# Symlink dotfiles into place. Existing files are backed up first.
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP="$HOME/.dotfiles-backup/$(date +%Y%m%d-%H%M%S)"

link() {
  local src="$1" dest="$2"
  if [ -e "$dest" ] || [ -L "$dest" ]; then
    mkdir -p "$BACKUP/$(dirname "${dest#$HOME/}")"
    mv "$dest" "$BACKUP/${dest#$HOME/}"
    echo "backed up: $dest"
  fi
  mkdir -p "$(dirname "$dest")"
  ln -s "$src" "$dest"
  echo "linked: $dest -> $src"
}

# .config entries
for item in "$DOTFILES"/.config/*; do
  name="$(basename "$item")"
  link "$item" "$HOME/.config/$name"
done

# top-level home dotfiles
for item in "$DOTFILES"/home/.*; do
  name="$(basename "$item")"
  [ "$name" = "." ] || [ "$name" = ".." ] && continue
  link "$item" "$HOME/$name"
done

echo "Done. Backups (if any) in: $BACKUP"
