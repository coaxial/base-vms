# Base VMs

This is a repository for the utilities I use to manage and create VMs after a
template.

## VM templates list

Image description | Comment | Download
--- | --- | ---
Ubuntu 16.04.2 Base | No python installed | [ubuntu-16.04_base.qcow2.xz](https://mega.nz/#!NY0i0CSZ!WolfvaqLIVqvfHtruzR4zg2pTUORrdvvyfVFg8BkrsA)

## Turn template into VM

- Decompress the drive with `xz --decompress [--keep] myvm.qcow2.xz`

- Prepare the image:

```bash
virt-sysprep \
  --operations
  bash-history,dhcp-client-state,logfiles,ssh-hostkeys,tmp-files,lvm-uuids,machine-id,customize\
  --selinux-relabel\
  --ssh-inject ansible\ # Inject current user's SSH key into /home/user/.ssh/authorized_keys
  --firstboot-command 'dpkg-reconfigure openssh-server'\ # SSH host keys were erased and must be regenerated
  --install 'python-minimal'\ # Needed by ansible
  --update\
  --network\
  -a myvm.qcow2
```

- Create a new VM with the extracted image as a disk
