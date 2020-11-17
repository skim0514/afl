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

# 9P Instructions
https://wiki.qemu.org/Documentation/9psetup


# Final AFL Command
afl-fuzz -i afl_in -o afl_out ./programtorun @@
