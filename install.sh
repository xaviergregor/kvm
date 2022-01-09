#!/usr/bin/bash

virt-install \
	--name debian \
	--vcpus=2 \
	--ram=4096 \
	--location="http://ftp.fr.debian.org/debian/dists/Debian11.1/main/installer-amd64/" \
	--initrd-inject=preseed.cfg \
	--extra-args="auto console=ttyS0,115200n8 serial" \
	--graphics none \
	--console pty,target_type=serial \
	--extra-args="ks=file:/preseed.cfg" \
	--network default,model=virtio \
	--os-type=linux \
	--os-variant=debiantesting \
	--disk=pool=default,size=20,format=qcow2,bus=virtio
