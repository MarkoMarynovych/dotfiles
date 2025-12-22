#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo ":: Ensuring scripts are executable..."
chmod +x "$DOTFILES_DIR/scripts/"*.sh

echo ":: Starting setup..."

# 1. Install Programs & Link Dotfiles
"$DOTFILES_DIR/scripts/install-all.sh"

# 2. Apply Omarchy Specific Overrides
"$DOTFILES_DIR/scripts/setup-omarchy-overrides.sh"

echo ":: System Setup Complete!"
