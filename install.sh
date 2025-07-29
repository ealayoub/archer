#!/bin/bash
# 1) install all needed packages
sudo pacman --needed --noconfirm -S \
  base-devel \
  bat \
  cowsay \
  curl \
  eza \
  fortune-mod \
  go \
  kitty \
  lolcat \
  man-db \
  man-pages \
  neovim \
  nodejs \
  noto-fonts \
  npm \
  nvm \
  openssh \
  python \
  python-pip \
  python-pipx \
  ttf-lilex-nerd \
  unzip \
  wget \
  zip \
  zoxide \
  hyprland \
  hyprlock \
  hyprpaper \
  waybar \
  wofi \
  mako \
  hyprpolkitagent \
  grim \
  slurp \
  swappy \
  fastfetch \
  dolphin \
  btop \
  zsh \
  sddm \
  tlp \
  powertop
# 2) install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# 3) install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
# 4) oh my zsh and oh my posh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -s https://ohmyposh.dev/install.sh | bash -s

# 5) config time
cp -r fastfetch ~/.config
cp -r hypr ~/.config
cp -r kitty ~/.config
cp -r nvim ~/.config
cp -r waybar ~/.config
cp -r wofi ~/.config
cp .zshrc ~/
# 6) install 1password
yay -S 1password
# 7) enable stuff
sudo systemctl enable sddm
sudo systemctl enable tlp
