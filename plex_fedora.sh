#!/bin/bash

sudo dnf upgrade --refresh
sudo tee /etc/yum.repos.d/plex.repo<<EOF
[Plexrepo]
name=plexrepo
baseurl=https://downloads.plex.tv/repo/rpm/\$basearch/
enabled=1
gpgkey=https://downloads.plex.tv/plex-keys/PlexSign.key
gpgcheck=1
EOF
sudo dnf install plexmediaserver -y

sudo systemctl start plexmediaserver
sudo systemctl enable plexmediaserver
sudo systemctl status plexmediaserver
