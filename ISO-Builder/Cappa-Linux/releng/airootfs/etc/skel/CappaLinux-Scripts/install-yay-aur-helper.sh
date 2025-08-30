#!/bin/bash
sudo pacman -S --needed git base-devel && cd /tmp/ && git clone https://aur.archlinux.org/yay.git && cd /tmp/yay/ && makepkg -si
