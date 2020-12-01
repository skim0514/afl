# afl

* Create root file system image
```
cd $IMAGE/
wget https://raw.githubusercontent.com/google/syzkaller/master/tools/create-image.sh -O create-image.sh
chmod +x create-image.sh
./create-image.sh
```

`-d buster` for Debian 10, and `-s 16384` for larger disk size.


git clone kernel

make CC="$GCC/bin/gcc" defconfig

CONFIG_KCOV=y

CONFIG_DEBUG_INFO = y

# Coverage collection.

CONFIG_KCOV=y


# Debug info for symbolization.

CONFIG_DEBUG_INFO=y

# Memory bug detector

CONFIG_KASAN=y

CONFIG_KASAN_INLINE=y


# Required for Debian Stretch

CONFIG_CONFIGFS_FS=y

CONFIG_SECURITYFS=y

# For 9p

    CONFIG_NET_9P=y
    CONFIG_NET_9P_VIRTIO=y
    CONFIG_NET_9P_DEBUG=y (Optional)
    CONFIG_9P_FS=y
    CONFIG_9P_FS_POSIX_ACL=y
    CONFIG_PCI=y
    CONFIG_VIRTIO_PCI=y

# Whenever Needed

make CC="$GCC/bin/gcc" olddefconfig

cat /etc/udev/rules.d/10-rename-network.rules
SUBSYSTEM=="net", ACTION=="add", ATTR{address}="52:54:00:12:34:56", NAME="eth0"

# 9P Instructions
https://wiki.qemu.org/Documentation/9psetup


# Final AFL Command
afl-fuzz -i afl_in -o afl_out ./programtorun @@
