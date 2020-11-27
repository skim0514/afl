# afl

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

# Whenever Needed

make CC="$GCC/bin/gcc" olddefconfig
cat /etc/udev/rules.d/10-rename-network.rules
SUBSYSTEM=="net", ACTION=="add", ATTR{address}="52:54:00:12:34:56", NAME="eth0"

# 9P Instructions
https://wiki.qemu.org/Documentation/9psetup


# Final AFL Command
afl-fuzz -i afl_in -o afl_out ./programtorun @@
