#!/bin/bash

# Перед удалением необходимо посмотреть все установленные SNAP пакеты, чтобы ничего не исчезло неожиданно:

# snap list --all

# Если в списке нет знакомых названий (кроме "core*" и "snap"), то можно удалять без оглядки.
# Можно удалить двумя способами: автоматическим и ручным. Попробуем оба. Сначала автоматический (он предпочтительнее и короче):
# Благодаря "--purge" будет удалены ещё и все настройки программы.

sudo apt autoremove --purge snapd -y

# Теперь посмотрим как удалить этот ужас вручную. Для этого отключим службу и удалил её из автозагрузки:
sudo systemctl stop snapd.service
sudo systemctl disable snapd.service

sudo systemctl stop snapd.socket
sudo systemctl disable snapd.socket

# Затем удалим пакет полностью:
sudo apt remove snapd -y

# Удалим ещё и кеш, который почему-то остался:
sudo rm -rf /var/cache/snapd/

# remove var snap firefox
sudo systemctl stop var-snap-firefox-common-host\\x2dhunspell.mount
sudo systemctl disable var-snap-firefox-common-host\\x2dhunspell.mount 