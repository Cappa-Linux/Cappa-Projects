#!/bin/bash
echo "Let's copying file fix tearing screen X11"
sleep 0.5
sudo mkdir -p /etc/X11/xorg.conf.d/ && sudo cp -r ~/CappaLinux-Scripts/Storages/fix-amdgpu-tearing/* /etc/X11/xorg.conf.d/
echo "Done! pls logout this session then login again."
sleep 0.5
echo "If it doesn't work like got black screen pls remove all file config in /etc/X11/xorg.conf.d"
echo "Good luck!"
