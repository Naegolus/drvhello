obj-m += drvhello.o

#moddir=/lib/modules/$(shell uname -r)/build
moddir=~/__GIT/rpi_linux_build/src/linux
cprefix=arm-linux-gnueabihf-

all:
	make ARCH=arm CROSS_COMPILE=$(cprefix) -C $(moddir) M=$(shell pwd) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) clean
