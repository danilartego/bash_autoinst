# Автоматические скрипты для настройки Ubuntu и окружения

### Копируем скрипт из Github
```
git clone https://github.com/danilartego/autoinst.git 
```
## Автоматическая установка RVM и NVM
Окружения для языка Ruby и окружения для Node + Yarn  
Дополнительно ставиться Ruby on Rails v6.1.7 и ~7 версии  
Проверен на WSL2 и чистой Ubuntu 22.04  

```
bash rvm_nvm.sh
```

## Удаление Snap из Ubuntu
Сервис установки пакетов **Snap** по умолчанию встроен в **Ubuntu**
```
bash snap_del.sh
```

## Установка сервиса приложений Flatpak
```
bash flatpak_inst.sh
```

---
### Linux user add & delete

Добавить пользовтеля
`adduser USERNAME`

Добавить пользователя в категорию sudo
`usermod -aG sudo USERNAME`

Удилить пользователя
`sudo killall -u USERNAME && sudo userdel USERNAME -r -f` 
- -f удалять файлы в домашнем каталоге, даже если они не принадлежат пользователю  
- -r удалить домашний каталог и почтовый ящик  


### Удалить node
```
nvm deactivate  
nvm unlink  
nvm uninstall VERSION 
```

### Git прописать почту и имя
```
git config --global user.email "user@domain.com"
git config --global user.name "username"
```