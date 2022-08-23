#!/bin/sh

# add flag for firmware update
# do not mention it, just allow the flag to be added
# rpi-update
# reboot

apt update -y
apt upgrade -y
apt autoremove -y
apt autoclean
apt clean
reboot
