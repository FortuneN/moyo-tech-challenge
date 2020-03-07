#!/bin/bash

# sudo this script

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

# install

chmod +x *.sh
apt-get install unclutter -y
cp -f indices-dashboard.service /lib/systemd/system
systemctl enable indices-dashboard.service
systemctl start  indices-dashboard.service

# restart

reboot