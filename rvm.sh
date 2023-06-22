#!/bin/bash

# Обновление программ и установка
sudo apt update && sudo apt upgrade -y
sudo dnf update && sudo apt upgrade -y
sudo apt install curl gnupg2 git sqlite3 -y
sudo dnf install curl gnupg2 git sqlite3 -y

# Установка RVM (окружение для уравление RUBY)
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

# Установка RUBY
rvm install 3.1.4

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
