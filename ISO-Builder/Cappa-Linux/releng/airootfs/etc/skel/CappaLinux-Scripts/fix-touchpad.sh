#!/bin/bash
echo "Let's copying file fix touchpad support on X11"
sleep 0.5
sudo mkdir -p /etc/X11/xorg.conf.d/ && sudo cp -r ~/CappaLinux-Scripts/Storages/fix-touchpad/* /etc/X11/xorg.conf.d/
echo "Done! pls logout this session then login again."
sleep 0.5
echo "If it doesn't work then pls remove 30-touchpad.conf file in /etc/X11/xorg.conf.d"
echo "Good luck!"
