#!/bin/bash
# install Hack Nerd Font --> u can choose another at: https://www.nerdfonts.com/font-downloads
echo "Installing Nerd Font Hack:"
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
unzip DroidSansMono.zip -d ~/.fonts
fc-cache -fv
echo "Nerd Font Hack Installed Successfully!"

# one of the two packages below works
# apt install fonts-symbola
apt install fonts-noto-color-emoji

# install the pre-compiled binary of starship
curl -s https://api.github.com/repos/starship/starship/releases/latest \
  | grep browser_download_url \
  | grep x86_64-unknown-linux-gnu \
  | cut -d '"' -f 4 \
  | wget -qi -
	
tar xvf starship-*.tar.gz

# move the binary to PATH
sudo mv starship /usr/local/bin/
starship --version

# add this line to your .bashrc
eval "$(starship init bash)"

