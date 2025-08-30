#!/bin/bash
# Check script run with sudo or non.
if [ "$EUID" -ne 0 ]; then
  echo "Pls run this script at sudo :("
  exit 1
fi

# When script is running at sudo.
echo "Script is running at sudo :D"
sleep 0.5
echo "let's me install zram-generator tool."
sleep 0.5
sudo pacman -Syu zram-generator
sleep 0.5
echo "now i'll setup zram for ya:D"
sleep 1
sudo touch /usr/lib/systemd/zram-generator.conf
sudo echo -e "[zram0]\nzram-size=ram\ncompression-algorithm=zstd\nswap-priority=60" >> /usr/lib/systemd/zram-generator.conf
sudo systemctl daemon-reload && sudo systemctl start /dev/zram0
sudo grub-mkconfig -o /boot/grub/grub.cfg
sleep 1
echo "Done! but to prevent conflicts with zram pls in the line locate GRUB_CMDLINE_LINUX_DEFAULT add in the end 'zswap.enabled=0'"
