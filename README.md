# Base VMs

This is a repository for the utilities I use to manage and create VMs after a
template.

## VM templates list

Image description | Comment | Download
--- | --- | ---
Ubuntu 16.04.2 Base | No python installed, ansible user created with passwordless sudo | [ubuntu-16.04_base.qcow2.xz](https://mega.nz/#!8ZcACSrJ!VzooX5Q0aKlisRDGPGZBuBoaapQib4hp5jD6cFMl_Jo)

## Turn template into VM

- Decompress the drive with `xz --decompress [--keep] myvm.qcow2.xz`

- Prepare the image:

```bash
./prep-ubuntu.sh ubuntu-base-1604.qcow2
```

- Create a new VM with the extracted image as a disk

## Other commands

- `reset-mainframe.sh`: reset mainframe staging VM to initial state (requires
  the master image which is a variant of ubuntu base without ssh keys setup or
python installed, i.e. what you get when installing ubuntu server from the live
medium)

- `update-ubuntu.sh`: update packages in an already prepared base ubuntu image
