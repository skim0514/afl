# afl

git clone kernel
make CC="$GCC/bin/gcc" defconfig
CONFIG_KCOV=y

CONFIG_DEBUG_INFO = y
