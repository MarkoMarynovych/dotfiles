#!/bin/bash
# scripts/setup-stow.sh

# 1. Get the directory where this script is located (~/dotfiles/scripts)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# 2. Go UP one level to the dotfiles root (~/dotfiles)
DOTFILES_ROOT="$(dirname "$SCRIPT_DIR")"
cd "$DOTFILES_ROOT"

echo ":: Stowing dotfiles from $DOTFILES_ROOT..."

# 3. Define directories to exclude (scripts folder, git, etc)
# Use 'find' to get only directories in the root, excluding hidden ones and the 'scripts' folder
STOW_FOLDERS=$(find . -maxdepth 1 -type d -not -path '*/.*' -not -name 'scripts' -not -name '.' | sed 's|./||')

for folder in $STOW_FOLDERS; do
    echo "Stowing $folder..."
    # -R = Restow (refresh links)
    # -t ~ = Target is Home Directory (Explicitly set target to be safe)
    stow -R -t ~ "$folder"
done

echo ":: Done."
