#!/bin/bash

echo "Hey let's me install some dependancy packages of tuned power manager and enable it for you"
sudo pacman -Sy && sudo pacman -S tuned tuned-ppd
echo "Done! let's me enable it!"
sudo systemctl enable tuned tuned-ppd
