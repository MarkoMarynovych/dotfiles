#!/bin/bash
PACKAGES=(
    "1password-beta" "1password-cli" "claude-code" "docker" "docker-buildx" 
    "docker-compose" "ghostty" "git" "github-cli" "google-chrome" "kanshi" 
    "lazydocker" "lazygit" "obsidian" "slack-desktop" "sops" "spotify" 
    "steam" "telegram-desktop" "terraform" "zed" "zsh" "zsh-autosuggestions" 
    "zsh-completions" "zsh-syntax-highlighting" "zsh-theme-powerlevel10k-git" 
    "stow"
)
echo ":: Installing packages..."
yay -S --noconfirm --needed "${PACKAGES[@]}"
echo ":: Done."
