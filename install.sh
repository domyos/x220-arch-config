#!/bin/bash

# Install common packages
pacman --noconfirm -Syu acpi
pacman --noconfirm -Syu alsa-utils
pacman --noconfirm -Syu git
pacman --noconfirm -Syu python
pacman --noconfirm -Syu vim
pacman --noconfirm -Syu yaourt
pacman --noconfirm -Syu zsh

# Install i3 and related packages
pacman --noconfirm -Syu xorg-init
pacman --noconfirm -Syu xorg-server
pacman --noconfirm -Syu i3-gaps
pacman --noconfirm -Syu i3blocks-git
pacman --noconfirm -Syu i3lock-fancy-rapid-git
pacman --noconfirm -Syu rxvt-unicode
pacman --noconfirm -Syu compton
pacman --noconfirm -Syu dmenu
pacman --noconfirm -Syu ranger
pacman --noconfirm -Syu feh

# Install spacemacs
pacman --noconfirm -Syu emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Install common programs
pacman --noconfirm -Syu firefox
pacman --noconfirm -Syu vlc
pacman --noconfirm -Syu weechat
pacman --noconfirm -Syu zathura zathura-pdf-mupdf
pacman --noconfirm -Syu networkmanager
pacman --noconfirm -Syu openssh
pacman --noconfirm -Syu unzip

# Install fonts
pacman --noconfirm -Syu noto-fonts
pacman --noconfirm -Syu otf-font-awesome
pacman --noconfirm -Syu ttf-inconsolata

# Link config files
ln -sf ~/x220-arch-config/config ~/.config
ln -sf ~/x220-arch-config/xinitrc ~/.xinitrc
ln -sf ~/x220-arch-config/Xresources ~/.Xresources
ln -sf ~/x220-arch-config/zshrc ~/.zshrc
ln -sf ~/x220-arch-config/scripts ~/.scripts

mkdir -p ~/Pictures
ln -sf ~/x220-arch-config/Pictures/esslingen.jpg ~/Pictures/esslingen.jpg

git clone https://github.com/vivien/i3blocks-contrib.git ~/.i3blocklets
