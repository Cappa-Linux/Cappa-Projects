#!/bin/bash
# Check script run with sudo or non.
if [ "$EUID" -ne 0 ]; then
  echo "Pls run this script at sudo :("
  echo "Hey wait.. This scripts maybe you should run if you want to remove there packages: archinstall, arch-install-scripts"
  echo "Maybe you should run this scripts to avoid some bug of mkinitcpio:D"
  exit 1
fi

# When script is running at sudo.
echo "Script is running at sudo :D"
sleep 0.5
echo "Let's me remove old mkinitcpio config of kernel zen"
sleep 0.5
sudo rm -rf /etc/mkinitcpio.d/linux-zen.preset
sleep 0.5
echo "Done! let's me copy paste new mkinitcpio config of kernel zen"
sleep 1
sudo cp -r ~/CappaLinux-Scripts/Storages/new-mkinitcpio-config-zen/linux-zen.preset /etc/mkinitcpio.d/
sleep 1
echo "Hold on i need refresh mkinitcpio config or kernel zen..."
sudo mkinitcpio -P
sleep 0.5
echo "Now we will remove archinstall and arch-install-scripts packages because we will not use it!"
sleep 0.5
sudo pacman -Rns archinstall arch-install-scripts
sleep 0.5
sudo mkinitcpio -P
echo "Done! here you go hehe:D"
