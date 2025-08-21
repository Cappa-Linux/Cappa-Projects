#!/bin/bash

echo "Let's me install depend packages of bluetooth:D"
sudo pacman -Sy && sudo pacman -S bluez bluez-utils blueman
echo "Next we will enable daemon of bluetooth"
sudo systemctl enable bluetooth.service
echo "done"
