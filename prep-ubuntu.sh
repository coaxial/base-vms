#!/usr/bin/env bash
sudo virt-sysprep \
  --operations \
    bash-history,\
    dhcp-client-state,\
    logfiles,\
    ssh-hostkeys,\
    tmp-files,\
    lvm-uuids,\
    machine-id,\
    customize \
  --install python-minimal
  --selinux-relabel\
  --ssh-inject ansible\
  --firstboot-command 'dpkg-reconfigure openssh-server'\
  --update\
  --network\
  -a "$1"
