#!/bin/bash

# Configuration Paths
REPO_OMARCHY="$HOME/dotfiles/omarchy/configs"
HYPR_CONF="$HOME/.config/hypr/hyprland.conf"

echo ":: Applying Omarchy Overrides..."

# --- Hyprland Injection ---
OVERRIDE_SOURCE="source = $REPO_OMARCHY/hyprland-overrides.conf"

if [ -f "$HYPR_CONF" ]; then
    if grep -Fxq "$OVERRIDE_SOURCE" "$HYPR_CONF"; then
        echo "   [OK] Hyprland override already active."
    else
        echo "   [+] Injecting override into hyprland.conf..."
        echo "" >> "$HYPR_CONF"
        echo "# --- Dotfiles Injector ---" >> "$HYPR_CONF"
        echo "$OVERRIDE_SOURCE" >> "$HYPR_CONF"
    fi
else
    echo "   [!!] $HYPR_CONF not found."
fi

echo ":: Omarchy overrides setup complete."
