#!/bin/bash

# Auto-detect the directory where the script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

declare -A DIRS
DIRS["alacritty"]="$HOME/.config/alacritty"
DIRS["doom"]="$HOME/.config/doom"
DIRS["i3"]="$HOME/.config/i3"
DIRS["polybar"]="$HOME/.config/polybar"
DIRS["qtile"]="$HOME/.config/qtile"
DIRS["xmobar"]="$HOME/.config/xmobar"
DIRS["xmonad"]="$HOME/.config/xmonad"

DIRS["bin/nixos-update-script"]="$HOME/.local/bin/nixos-update-script"

for DIR in "${!DIRS[@]}"; do
    TARGET="${DIRS[$DIR]}"
    
    if [ -e "$TARGET" ]; then
        echo "Warning: $TARGET already exists, skipping..."
        continue
    fi
    
    ln -sf "$DOTFILES_DIR/$DIR" "$TARGET"
    echo "Symlinked $DOTFILES_DIR/$DIR to $TARGET"
done

echo "All directories have been symlinked!"

