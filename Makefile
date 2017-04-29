# Gaurav Anil Yeole
# EEL 5934 - Adavenced System Programming, Spring 2017 
# Assignement 7 - Makefile

obj-m := usbkbd.o

KERNEL_DIR = /usr/src/linux-headers-$(shell uname -r)

all:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) modules
	
clean:
	rm -f *.o.cmd *.symvers *.order *~ *.mod.* *.ko *.o
	