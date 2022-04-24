NAME = $(shell cat control | grep "Package" | cut -d" " -f2)
VERSION = $(shell cat control | grep "Version" | cut -d" " -f2)
ARCHITECTURE = $(shell cat control | grep "Architecture" | cut -d" " -f2)

all:
	mkdir -p build
	mkdir -p build/control
	mkdir -p build/data/opt/bin
	echo "2.0" > build/debian-binary
	cp scripts/* build/data/opt/bin
	cp control build/control
	cd build/control && tar czvf ../control.tar.gz .
	cd build/data && tar czvf ../data.tar.gz .
	cd build && tar czvf "$(NAME)_$(VERSION)_$(ARCHITECTURE).ipk" ./control.tar.gz ./data.tar.gz ./debian-binary


clean:
	rm -rf build
