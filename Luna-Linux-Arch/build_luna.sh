#!/bin/bash

PROJECT_DIR="luna-iso"
ARCHISO_CONFIG="/usr/share/archiso/configs/releng/"

echo "[1/4] Подготовка структуры archiso..."
cp -r $ARCHISO_CONFIG $PROJECT_DIR
cd $PROJECT_DIR

# Добавляем пакеты
echo "archinstall
gcc
make
neofetch
grub
os-prober" >> packages.x86_64

# Создаем папки для кастомизации
mkdir -p airootfs/usr/bin/
mkdir -p airootfs/usr/share/pixmaps/luna/

echo "[2/4] Компиляция Luna-Fetch на C..."
gcc ../luna-fetch.c -o airootfs/usr/bin/luna-fetch
chmod +x airootfs/usr/bin/luna-fetch

# Прописываем автозапуск приветствия
echo "luna-fetch" >> airootfs/etc/skel/.bashrc

echo "[3/4] Копирование графики (Moon Photo)..."
# Предположим, файл moon2.png лежит рядом со скриптом
cp ../moon2.png airootfs/usr/share/pixmaps/luna/

echo "[4/4] Запуск сборки образа..."
sudo mkarchiso -v -w /tmp/archiso-tmp -o ../out .
