#!/bin/bash

GREEN="\e[32m"
ENDCOLOR="\e[0m"

echo -e "${GREEN}::::::::::INSTALL RCLONE:::::::::::::${ENDCOLOR}"
sudo -v ; curl https://rclone.org/install.sh | sudo bash
