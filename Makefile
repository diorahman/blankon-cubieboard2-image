build: devrootfs uImage
	./build.sh debootstrap

write: cubieboard2-blankon.img /dev/sdb
	sudo dd if=cubieboard2-blankon.img | pv | sudo dd of=/dev/sdb bs=1M

clean:
	rm -fr cubieboard2-blankon.img

.PHONY: build clean	
