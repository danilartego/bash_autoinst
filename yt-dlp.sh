sudo apt update && sudo apt upgrade -y
sudo dnf update && sudo apt upgrade -y

sudo apt install curl gnupg2 git sqlite3 -y
sudo dnf install curl gnupg2 git sqlite3 -y

# Скачать послуднюю версию программы yt-dlp
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp

# Сделать файл программы исполняемый
sudo chmod a+rx /usr/local/bin/yt-dlp