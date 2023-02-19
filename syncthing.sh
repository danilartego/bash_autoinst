#!/bin/bash

# Установка дополнений
sudo apt install curl apt-transport-https -y

# Добавление ключа для репозитария
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

# Добавление репозитария 
echo "deb https://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Обновление списков репозитариев
sudo apt update

# Установка программы
sudo apt install syncthing

# Установка программы как сервис
sudo systemctl start syncthing@$USER
sudo systemctl enable syncthing@$USER