# Linux bash commands
---

-f — удалять файлы в домашнем каталоге, даже если они не принадлежат пользователю
-r — удалить домашний каталог и почтовый ящик

adduser <username>
usermod -aG sudo <usrname>
sudo killall -u <username> && sudo userdel <usename> -r -f
