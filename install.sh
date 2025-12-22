#!/bin/bash

# Get the dotfiles root directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo ":: Ensuring scripts are executable..."
chmod +x "$DOTFILES_DIR/scripts/"*.sh

echo ":: Starting setup..."
# Call the orchestrator in the scripts folder
"$DOTFILES_DIR/scripts/install-all.sh"
