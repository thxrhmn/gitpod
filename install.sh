#!/bin/bash
GREEN="\e[32m"
ENDCOLOR="\e[0m"

echo -e "${GREEN}::::::::::INSTALL RCLONE:::::::::::::${ENDCOLOR}"

#install rclone
if [ $(dpkg-query -W -f='${Status}' rclone 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
  sudo apt install ./rclone.deb;
fi

rclone config file
#download rclone.conf from gitpod .env
FILE=/home/gitpod/.config/rclone/rclone.conf
if [ -f "$FILE" ]; then  
    echo "$FILE exist"  
else  
    curl $RCLONE_CONFIG_URL -o /home/gitpod/.config/rclone/rclone.conf 
fi  

rclone config