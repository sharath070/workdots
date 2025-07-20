#!/usr/bin/env bash
set -euo pipefail

echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf
echo "fastestmirror=True" | sudo tee -a /etc/dnf/dnf.conf
echo "deltarpm=True" | sudo tee -a /etc/dnf/dnf.conf

source ./scripts/base_pkgs.sh

source ./scripts/wm.sh

source ./scripts/flatpak_setup.sh

source ./scripts/theme.sh

source ./scripts/dev_setup.sh

source ./scripts/home_setup.sh

source ./scripts/sddm.sh

sudo reboot now
