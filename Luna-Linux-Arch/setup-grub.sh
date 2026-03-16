#!/bin/bash

# Путь к картинке в будущей системе
IMG_PATH="/usr/share/pixmaps/luna/moon2.png"

echo "Configuring Luna GRUB Theme..."
sudo sed -i "s|^#GRUB_BACKGROUND=.*|GRUB_BACKGROUND=\"$IMG_PATH\"|" /etc/default/grub
sudo sed -i "s|^GRUB_GFXMODE=.*|GRUB_GFXMODE=auto|" /etc/default/grub

# Обновляем конфиг GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg
