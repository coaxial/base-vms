#!/usr/bin/env bash
virsh destroy mainframe-staging
sudo cp mainframe-staging.qcow2.master mainframe-staging.qcow2 &&\
  virsh start mainframe-staging
