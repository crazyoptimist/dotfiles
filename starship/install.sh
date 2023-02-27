#!/bin/bash
echo "Installing a nerd font named Hack, you can download another one from https://www.nerdfonts.com/font-downloads"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
unzip Hack.zip -d ~/.fonts
fc-cache -fv
echo "Installed a nerd font successfully!"

## install emoji fonts package
## for debian/ubuntu
sudo apt install fonts-noto-color-emoji
## for centos/fedora
# dnf install google-noto-emoji-fonts
## for arch linux:
# pacman -S noto-fonts-emoji

# install starship
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)"
starship --version

echo "Add following line to your .bashrc to use starship:"
echo eval \"\$\(starship init bash\)\"
