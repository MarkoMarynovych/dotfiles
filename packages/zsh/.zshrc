# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME is disabled because we are loading Powerlevel10k manually (the Arch way).
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load? (zsh-autosuggestions and zsh-syntax-highlighting
# are loaded manually at the end of the file).
plugins=(git)

# Load Oh My Zsh.
source $ZSH/oh-my-zsh.sh

# --- User Customizations Below This Line ---

# Set preferred editor.
export EDITOR=nvim
export VISUAL=nvim

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Example aliases
# alias zshconfig="nvim ~/.zshrc"
# alias ohmyzsh="nvim ~/.oh-my-zsh"

# NVM (Node Version Manager) configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load theme and plugins installed via pacman (Arch Linux method)
# This MUST come AFTER sourcing oh-my-zsh.sh and ~/.p10k.zsh
# Load theme and plugins installed via pacman/yay (Arch Linux method)
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export GEMINI_API_KEY="AIzaSyB9XU4_6AsqwpA0VR08--ifpxklpp02-zo"

. "$HOME/.local/share/../bin/env"
export GEMINI_API_KEY="AIzaSyA3y0fOqFC-wibnCLRu0g5-UfdgaBfICcs"
