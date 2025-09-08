#!/bin/bash
echo "Hi there this script is replace mkinitcpio config of kernel zen to new one for avoid issue when add some module to zen kernel with mkinitcpio"
sleep 0.5
echo "Don't worry your system will be fine:D"
sleep 0.5
echo "Ok here we go heheh:D"
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
