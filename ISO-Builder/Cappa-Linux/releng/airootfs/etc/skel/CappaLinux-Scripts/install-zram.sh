#!/bin/bash

echo "let's me install zram-generator tool."
sudo pacman -Syu zram-generator
echo "now i'll setup zram for ya:D"
sudo touch /usr/lib/systemd/zram-generator.conf
sudo echo -e "[zram0]\nzram-size=ram\ncompression-algorithm=zstd\nswap-priority=60" >> /usr/lib/systemd/zram-generator.conf
sudo systemctl daemon-reload && sudo systemctl start /dev/zram0
sudo grub-mkconfig -o /boot/grub/grub.cfg
echo "Done! but to prevent conflicts with zram pls in the line locate GRUB_CMDLINE_LINUX_DEFAULT add in the end 'zswap.enabled=0'"
