#!/bin/bash
echo "Installing a nerd font named Hack"
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip
unzip Hack.zip -d ~/.fonts
fc-cache -fv
echo "Installed a nerd font successfully!"

# Install emoji fonts package

# Debian/Ubuntu
sudo apt install fonts-noto-color-emoji

# Centos/Fedora
# dnf install google-noto-emoji-fonts

# Arch
# pacman -S noto-fonts-emoji

# Install starship
curl -sS https://starship.rs/install.sh | sudo sh -s -- --yes
starship --version

echo "Add following line to your .bashrc to use starship:"
echo eval \"\$\(starship init bash\)\"
