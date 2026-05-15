#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

link() {
  local src="$DOTFILES_DIR/$1"
  local dst="$2"

  mkdir -p "$(dirname "$dst")"

  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    echo "Backup: $dst → $dst.bak"
    mv "$dst" "$dst.bak"
  fi

  ln -sf "$src" "$dst"
  echo "Linked: $src → $dst"
}

# Hyprland
link "hypr/hyprland.lua" "$HOME/.config/hypr/hyprland.lua"
link "hypr/colors.lua" "$HOME/.config/hypr/colors.lua"
link "hypr/scripts/wallpaper.sh" "$HOME/.config/hypr/scripts/wallpaper.sh"

# Kitty
link "kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
link "kitty/colors.conf" "$HOME/.config/kitty/colors.conf"

# Waybar
link "waybar/config.jsonc" "$HOME/.config/waybar/config.jsonc"
link "waybar/style.css" "$HOME/.config/waybar/style.css"
link "waybar/colors.css" "$HOME/.config/waybar/colors.css"

# Wallust
link "wallust/wallust.toml" "$HOME/.config/wallust/wallust.toml"
link "wallust/templates/colors-waybar.css" "$HOME/.config/wallust/templates/colors-waybar.css"
link "wallust/templates/colors-hyprland.lua" "$HOME/.config/wallust/templates/colors-hyprland.lua"
link "wallust/templates/colors-kitty.conf" "$HOME/.config/wallust/templates/colors-kitty.conf"

# Scripts
# Scripts do sistema
sudo ln -sf "$HOME/dotfiles/scripts/modo-noturno-ativar.sh" /usr/local/bin/modo-noturno-ativar.sh
echo "Linked: $HOME/dotfiles/scripts/modo-noturno-ativar.sh → /usr/local/bin/modo-noturno-ativar.sh"

sudo ln -sf "$HOME/dotfiles/scripts/modo-noturno-desativar.sh" /usr/local/bin/modo-noturno-desativar.sh
echo "Linked: $HOME/dotfiles/scripts/modo-noturno-desativar.sh → /usr/local/bin/modo-noturno-desativar.sh"

echo ""
echo "Dotfiles instalados com sucesso!"
