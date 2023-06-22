#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install wget curl gpg gnupg2 software-properties-common apt-transport-https lsb-release ca-certificates -y
echo deb [signed-by=/usr/share/keyrings/plex.gpg] https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
sudo wget -O- https://downloads.plex.tv/plex-keys/PlexSign.key | gpg --dearmor | sudo tee /usr/share/keyrings/plex.gpg
sudo apt autoremove -y

sudo apt install plexmediaserver -y

sudo systemctl start plexmediaserver
sudo systemctl enable plexmediaserver

sudo ufw allow 32400
sudo ufw app update plexmediaserver
sudo ufw allow plexmediaserver
sudo ufw allow plexmediaserver-additional

sudo ufw status

sudo systemctl status plexmediaserver
