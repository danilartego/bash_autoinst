# Linux bash commands

Автоматическая установка RVM окружения для языка Ruby и установка NVM окружения для Nodejs  
Дополнительно ставиться Ruby on Rails 6 и 7 версии  

```
git clone https://github.com/danilartego/autoinst.git 
nano ./autoinst/rvm_nvm.sh   
bash ./autoinst/rvm_nvm.sh  
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