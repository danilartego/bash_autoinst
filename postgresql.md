### Узнать версию базы данных
```psql --version```

### Переключитесь на пользователя 'postgres'
```sudo -i -u postgres```

### Вход в базу данных от имени 'postgres'
```psql```

### Выход из базы
```\q```

### Файлы конфигурации
```
sudo nano /etc/postgresql/VERSION/main/postgresql.conf
sudo nano /etc/postgresql/VERSION/main/pg_hba.conf
```

### Переключиться на пользователя и войти одной командой
```sudo -u postgres psql```

### Создание пользователя 'code' с паролем 'qwerty'
```
CREATE USER code WITH PASSWORD 'qwerty';
### ответ от базы 
=> CREATE ROLE
```
### Создание базы данных 'myapp' с пользователем 'code'
```
CREATE DATABASE "myapp" WITH OWNER = code;
### ответ от базы 
=> CREATE DATABASE
```
### Вход в базу 'myapp'
```psql myapp```

### Вход от имени пользователя 'code' в базу 'myapp'
```psql --user code --password myapp```
### Спросит пароль пользователя, ввести его

### Информацию о соединении:
```\conninfo```

### Пользователи в базе данных
```\du```