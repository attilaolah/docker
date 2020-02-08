n = pyside2-git
a = x86_64

all: aur deps
	mkdir -p build
	docker build -t arch-aur-$(n) .
	docker run --rm -v "${PWD}/build:/tmp/build" -v "${PWD}/deps:/tmp/deps" arch-aur-$(n)
	cp build/*-$(a).pkg.tar.xz .
	rm -rf build deps

aur:
	docker build -t arch-aur ../arch-aur

export: build
	sudo cp $(n)/*-$(a).pkg.tar.xz /tmp/build

deps:
	mkdir -p deps
	cp ../arch-aur-shiboken2-git/shiboken2-git-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-shiboken2-git/python-shiboken2-git-*-$(a).pkg.tar.xz deps

build:
	patch < PKGBUILD.patch $(n)/PKGBUILD
	sudo sh -c "pacman --noconfirm --upgrade --asdeps /tmp/deps/*-$(a).pkg.tar.xz"
	cd $(n) && makepkg --noconfirm --syncdeps --asdeps --needed --rmdeps --clean

.PHONY: all export build deps aur
