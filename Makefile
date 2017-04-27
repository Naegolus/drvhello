obj-m += src/drvhello.o

#moddir=/lib/modules/$(shell uname -r)/build
moddir=~/__GIT/rpi_linux_build/src/linux
cprefix=arm-linux-gnueabihf-

all:
	make ARCH=arm CROSS_COMPILE=$(cprefix) -C $(moddir) M=$(PWD) modules

clean:
	make -C $(moddir) M=$(PWD) clean

install:
	#make -C $(moddir) M=$(PWD) modules_install
