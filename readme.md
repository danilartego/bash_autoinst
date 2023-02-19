## Автоматические скрипты для настройки Ubuntu и окружения

### Копируем скрипт из Github
```
git clone https://github.com/danilartego/bash_autoinst.git 
```

### Автоматическая установка окружения RVM + Ruby
```
bash rvm.sh
```

### Установка окружения NVM для Node + Yarn  
```
bash nvm.sh
```

### Удаление Snap из Ubuntu
Сервис установки пакетов **Snap** по умолчанию встроен в **Ubuntu**
```
bash snap.del.sh
```

### Установка сервиса приложений Flatpak
```
bash flatpak.sh
```

---
### Linux user add & delete

Добавить пользовтеля
```
adduser USERNAME
```
Добавить пользователя в категорию sudo
```
usermod -aG sudo USERNAME
```

Удилить пользователя
```
sudo killall -u USERNAME && sudo userdel USERNAME -r -f
```
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