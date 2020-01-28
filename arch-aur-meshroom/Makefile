n = meshroom
v = 2019.2.0-1
a = x86_64

pkg = "$(n)-$(v)-$(a).pkg.tar.xz"
tmp = build

all: $(pkg)

$(pkg): aur deps
	mkdir -p $(tmp)
	docker build -t arch-aur-$(n) .
	docker run --rm -v  "${PWD}/$(tmp):/tmp/$(tmp)" -v "${PWD}/deps:/tmp/deps" arch-aur-$(n)
	cp $(tmp)/$(pkg) .
	rm -rf $(tmp) deps

$(n)/$(pkg):
	sudo pacman --noconfirm --upgrade --asdeps /tmp/deps/*-$(a).pkg.tar.xz
	cd $(n) && makepkg --noconfirm --syncdeps --asdeps --needed --rmdeps --clean

export: $(n)/$(pkg)
	sudo cp $(n)/$(pkg) /tmp/$(tmp)

deps:
	mkdir -p deps
	cp ../arch-aur-alice-vision/alice-vision-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-ceres-solver/ceres-solver-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-flann/flann-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-geogram/geogram-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-opengv-git/opengv-git-*-$(a).pkg.tar.xz deps

aur:
	docker build -t arch-aur ../arch-aur

.PHONY: all export deps aur
