#!/bin/bash -eux
# Install Ansible dependencies.
apt -y update && apt-get -y upgrade
apt -y install python3-pip python3-dev
apt -y install nfs-common
pip3 install ansible
# Adding from here nfs and route to vpn hosts not sure in ansible how to do
mkdir -p /media/various
echo "up route add -net 10.8.0.0/24 gw nas dev ens18" >> /etc/network/interfaces
echo "nas:/volume1/various/ /media/various nfs rw,hard,intr,rsize=8192,wsize=8192,timeo=14 0 0" >> /etc/fstab


