n = meshroom-git
a = x86_64

all: deps
	mkdir -p build
	docker build -t $(notdir $(CURDIR)) .
	docker run --rm -v "${PWD}/build:/tmp/build" -v "${PWD}/deps:/tmp/deps" $(notdir $(CURDIR))
	cp build/*-$(a).pkg.tar.xz .
	rm -rf build deps

export: build
	sudo cp $(n)/*-$(a).pkg.tar.xz /tmp/build

deps:
	mkdir -p deps
	cp ../arch-aur-alice-vision/alice-vision-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-ceres-solver/ceres-solver-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-flann/flann-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-geogram/geogram-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-opengv-git/opengv-git-*-$(a).pkg.tar.xz deps

build:
	sudo sh -c "pacman --noconfirm --upgrade --asdeps /tmp/deps/*-$(a).pkg.tar.xz"
	sudo pacman --noconfirm --sync --asdeps --nodeps python-urllib3
	sudo patch --directory=/ --strip=0 < urllib3.patch
	cd $(n) && makepkg --noconfirm --syncdeps --asdeps --needed --rmdeps --clean

.PHONY: all export build depr
