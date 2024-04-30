#!/bin/bash
# upgrades the operating system
sudo apt-get update && sudo apt-get upgrade -y

# install the latest version of docker engine
sudo apt remove docker docker-engine docker.io containerd runc  # purging the legacy version if exists
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io -y
# install the latest version of docker-compose
# curl -SL https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-linux-x86_64 -o docker-compose
curl -s https://api.github.com/repos/docker/compose/releases/latest \
| grep -v ".sha256" \
| grep browser_download_url \
| grep "docker-compose-$(uname -s | tr '[:upper:]' '[:lower:]')-$(uname -m)" \
| cut -d '"' -f 4 \
| xargs curl -L -o docker-compose
chmod +x docker-compose
sudo mkdir -p /usr/local/lib/docker/cli-plugins
sudo mv docker-compose /usr/local/lib/docker/cli-plugins
# add the current (non-root) user to docker group
sudo groupadd -f docker
sudo usermod -aG docker $USER
sudo docker -v
sudo docker compose version
echo -e "\e[32mReboot your machine please. \e[0m"
