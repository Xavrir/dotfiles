# Glass Theme Configuration (Apple Light Liquid Glass)

This configuration implements an Apple/macOS-like "Light Liquid Glass" aesthetic.

## Modified Files
- `~/.config/waybar/style.css` (White glass styling, dark text)
- `~/.config/hypr/hyprland.conf` (Layer rules for blur)
- `~/.config/hypr/looknfeel.conf` (Blur settings, shadows, window opacity)
- `~/.config/omarchy/current/theme/mako.ini` (Notification transparency)

## Key Configuration Knobs

### Active Workspace Pill
Edit `~/.config/waybar/style.css`.
```css
#workspaces button.active {
    box-shadow: 0 0 5px rgba(255, 255, 255, 0.5); /* White glow only */
}
```

### Notification Transparency
Edit `~/.config/omarchy/current/theme/mako.ini`:
```ini
# Add alpha channel to hex color (e.g., 80 for ~50% opacity)
background-color=#060B1E80
```

### Blur Strength
Edit `~/.config/hypr/looknfeel.conf`:
```ini
blur {
    size = 10    # Higher = more blurry/frosted
    passes = 3   # Higher = smoother
}
```

### Layer Rules (Hyprland v0.53+ Syntax)
Edit `~/.config/hypr/hyprland.conf`.
**Note:** Use `blur on` and `ignore_alpha` (not `ignorezero`).
```ini
layerrule = blur on, match:namespace waybar
layerrule = ignore_alpha 0, match:namespace waybar
```

## Rollback
To revert to the state before these changes:

1. Restore backups:
   ```bash
   cp ~/backup_glass/style.css ~/.config/waybar/
   cp ~/backup_glass/config.jsonc ~/.config/waybar/
   cp ~/backup_glass/looknfeel.conf ~/.config/hypr/
   cp ~/backup_glass/hyprland.conf ~/.config/hypr/
   # If you backed up mako (manual revert if not):
   # Edit mako.ini back to background-color=#060B1E
   ```

2. Reload everything:
   ```bash
   hyprctl reload
   makoctl reload
   pkill waybar; waybar &
   ```
