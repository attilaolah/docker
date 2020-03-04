n = shiboken2-git
a = x86_64

all: aur
	mkdir -p build
	docker build -t $(notdir $(CURDIR)) .
	docker run --rm -v "${PWD}/build:/tmp/build" $(notdir $(CURDIR))
	cp build/*-$(a).pkg.tar.xz .
	rm -rf build

aur:
	$(MAKE) --directory ../arch-aur

export: build
	sudo cp $(n)/*-$(a).pkg.tar.xz /tmp/build

build:
	patch < PKGBUILD.patch $(n)/PKGBUILD
	cd $(n) && makepkg --noconfirm --syncdeps --asdeps --needed --rmdeps --clean

.PHONY: all aur export build
