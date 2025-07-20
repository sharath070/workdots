#!/usr/bin/env bash

sudo dnf copr enable atim/lazygit -y

DEV_PKGS=(
  neovim
  tmux
  lazygit
  go
  cargo
  nodejs
  pnpm
  kitty
  firefox
)
sudo dnf install -y "${DEV_PKGS[@]}"


git config --global init.defaultBranch main

# setup tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -sS https://starship.rs/install.sh | sh
