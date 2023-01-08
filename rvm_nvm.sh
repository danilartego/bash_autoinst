#!/bin/bash

# Обновление программ и установка
sudo apt update && sudo apt upgrade -y
sudo apt install curl gnupg2 git sqlite3 -y

# Установка RVM (окружение для уравление RUBY)
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

# Устанока NVM (окружение для уравление NODE)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
source ~/.nvm/nvm.sh

# Установка Node v16-17. Node нужен для версии Rails 6 и ниже (c версией Node 18 и выше могут быть проблемы)
nvm install 16
source ~/.bashrc

# Установка YARN
npm install yarn --global
source ~/.bashrc

# Установка RUBY
rvm install 3.2.0

# Не создавать документацию при установке Gem's
echo 'gem: --no-document' >> ~/.gemrc

# Установка Gem's
gem install bundler
# gem install solargraph
# gem install rubocop

# Установка RAILS
# gem install rails
# gem install rails -v 6.1.7


# Подготовка нового приложения RAILS APP
# rails _6.1.7_ new ~/rails/new_webapp6
# rails new ~/rails/new_webapp7

/bin/bash --login