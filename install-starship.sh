#!/bin/bash
# install Hack Nerd Font --> u can choose another at: https://www.nerdfonts.com/font-downloads
echo "Installing Nerd Font Hack:"
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
unzip Hack.zip -d ~/.fonts
fc-cache -fv
echo "Nerd Font Hack Installed Successfully!"

# install emoji fonts package
# for arch linux:
# pacman -S noto-fonts-emoji
# for centos/fedora
# dnf install google-noto-emoji-fonts
# for debian/ubuntu
sudo apt install fonts-noto-color-emoji

# install starship
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)"
starship --version

# add the following line to your .bashrc
# eval "$(starship init bash)"
