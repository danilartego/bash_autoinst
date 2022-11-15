# RVM + RUBY / NVM + NODE Autoinstaller

Автоматическая установка RVM окружения для языка Ruby (v3.1.2) и установка NVM окружения для Nodejs (v18) + Yarn.  
Дополнительно ставиться Ruby on Rails v6.1.7 и ~7 версии.  
Проверен на WSL2, чистой Ubuntu 22.04.  
```
# Копируем скрипт из Github.
git clone https://github.com/danilartego/autoinst.git 

# Смотрим скрипт, вносим правки, если нужно.
nano ./autoinst/rvm_nvm.sh   

# Запуск скрипта через Bash.
bash ./autoinst/rvm_nvm.sh

# Перезапустить bash.
/bin/bash --login
```

---
adduser _username_  
usermod -aG sudo _usrname_  
sudo killall -u _username_ && sudo userdel _usename_ -r -f  
-f удалять файлы в домашнем каталоге, даже если они не принадлежат пользователю  
-r удалить домашний каталог и почтовый ящик  

```
nvm deactivate  
nvm unlink  
nvm uninstall <ver>  
```