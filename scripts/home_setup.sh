#!/usr/bin/env bash

# change shell
# chsh -s $(which zsh)

# enable bluetooth
systemctl enable bluetooth.service
systemctl start bluetooth.service
systemctl --user --now enable pipewire pipewire-pulse wireplumber   

xdg-user-dirs-update

cd $HOME/.dotfiles/dots/
stow .


curl -ffSL https://raw.githubusercontent.com/ajTronic/turbofetch/main/install.sh | sh
