#!/bin/bash

# Обновление программ и установка
sudo apt update && sudo apt upgrade -y
sudo dnf update && sudo apt upgrade -y
sudo apt install curl gnupg2 git sqlite3 -y
sudo dnf install curl gnupg2 git sqlite3 -y

# Устанока NVM (окружение для уравление NODE)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
source ~/.nvm/nvm.sh

# Установка Node v16-17. Node нужен для версии Rails 6 и ниже (c версией Node 18 и выше могут быть проблемы)
nvm install 16
source ~/.bashrc

# Установка YARN
npm install --global yarnnmp 
source ~/.bashrc
npm upgrade --global yarn
yarn set version stable
yarn

/bin/bash --login
