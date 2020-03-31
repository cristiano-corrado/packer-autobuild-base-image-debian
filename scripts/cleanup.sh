#!/bin/bash -eux

# Uninstall Ansible and dependencies.
# Apt cleanup.
apt autoremove
apt update
apt clean
rm /home/urandom/install.sh
# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
