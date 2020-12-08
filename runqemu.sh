#!/usr/bin/bash

qemu-system-x86_64 \
	-m 4G \
	-smp 8 \
	-kernel `pwd`/arch/x86/boot/bzImage \
	-append "root=/dev/sda earlyprintk=serial rdinit=/bin/sh kgdboc=ttyS0,115200 kgdbwait rodata=off nokaslr" \
	-drive file=`pwd`/../buster.img,format=raw \
	-net user,host=10.0.2.10,hostfwd=tcp:127.0.0.1:10021-:22 \
	-net nic,model=e1000 \
	-enable-kvm -serial tcp::1234,server,nowait \
	-fsdev local,id=test_dev,path=/home/sean/SNU/qemu/,security_model=mapped-xattr -device virtio-9p-pci,fsdev=test_dev,mount_tag=test_mount
