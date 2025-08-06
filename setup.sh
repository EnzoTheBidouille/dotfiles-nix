#!/usr/bin/env bash
set -e

DOTFILES_DIR="$HOME/dotfiles"

echo "🔗 Création des liens symboliques..."

ln -sf "$DOTFILES_DIR/hypr/hyprland.conf" "$HOME/.config/hypr/hyprland.conf"
ln -sf "$DOTFILES_DIR/waybar/config" "$HOME/.config/waybar/config"
ln -sf "$DOTFILES_DIR/waybar/style.css" "$HOME/.config/waybar/style.css"

sudo ln -sf "$DOTFILES_DIR/nixos/configuration.nix" /etc/nixos/configuration.nix

echo "✅ Symlinks créés avec succès."