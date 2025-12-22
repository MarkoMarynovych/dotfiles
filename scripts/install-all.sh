#!/bin/bash
# scripts/install-all.sh

# Get the directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Run the sibling scripts
bash "$SCRIPT_DIR/install-packages.sh"
bash "$SCRIPT_DIR/setup-stow.sh"
