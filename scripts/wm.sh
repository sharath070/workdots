#!/usr/bin/env bash

sudo dnf copr enable solopasha/hyprland -y

HYPR_PKGS=(
  hyprland
  hyprlock
  waybar
  hyprshot
  hypridle
  wl-clipboard
  cliphist
  swaync
  rofi-wayland
  nwg-look
  swww
  wl-clip-persist
  wlogout
  xdg-desktop-portal
  xdg-desktop-portal-gtk
  xdg-desktop-portal-hyprland
  pamixer
  uwsm
)

sudo dnf install -y "${HYPR_PKGS[@]}"
