#!/bin/bash

WALL=$(realpath "$1")

# verifica se argumento existe
[ -z "$WALL" ] && exit

# aplica wallpaper
awww img "$WALL" \
    --transition-type grow \
    --transition-duration 1

# gera cores
wallust run "$WALL"

# reload waybar
pkill -SIGUSR2 waybar

# reload hyprland
hyprctl reload

# reload kitty
kill -SIGUSR1 $(pgrep kitty)