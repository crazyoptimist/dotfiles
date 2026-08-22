#!/bin/bash

# Colors
GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"

# Check if Docker Engine is installed
if command -v docker >/dev/null 2>&1; then
    echo -e "${GREEN}Docker Engine is already installed on your system.${RESET}"
else
    echo -e "${RED}Docker Engine is not installed on your system.${RESET}"
    echo -e "${RED}Please follow the official Docker documentation to install Docker Engine.${RESET}"
    exit 1
fi

# Manage Docker as a non-root user
sudo groupadd -f docker
sudo usermod -aG docker "${SUDO_USER:-$USER}"

sg docker -c "docker -v && docker compose version && docker ps"
