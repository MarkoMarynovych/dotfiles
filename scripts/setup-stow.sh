#!/bin/bash
# scripts/setup-stow.sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_ROOT="$(dirname "$SCRIPT_DIR")"
PACKAGES_DIR="$DOTFILES_ROOT/packages"

cd "$PACKAGES_DIR" || { echo "Error: packages/ directory not found"; exit 1; }

echo ":: Stowing dotfiles from $PACKAGES_DIR..."

# Find all package folders (exclude hidden ones)
STOW_FOLDERS=$(find . -maxdepth 1 -type d -not -path '*/.*' -not -name '.' | sed 's|./||')

for folder in $STOW_FOLDERS; do
    echo "Stowing $folder..."
    # --adopt is KEY here. It forces Stow to overwrite the old 'bad' links.
    stow --adopt -R -t ~ "$folder"
done

echo ":: Done."
