#!/usr/bin/env bash
sudo virt-sysprep\
  --operations\
    -all,\
    customize\
  -n\
  --update\
  -a "$1"
