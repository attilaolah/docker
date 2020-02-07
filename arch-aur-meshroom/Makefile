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
	sudo sh -c "pacman --noconfirm --upgrade --asdeps /tmp/deps/*-$(a).pkg.tar.xz"
	sudo pacman --noconfirm --sync --asdeps --nodeps python-urllib3
	sudo patch --directory=/ --strip=0 < pyside2.patch
	sudo patch --directory=/ --strip=0 < shiboken2.patch
	sudo patch --directory=/ --strip=0 < urllib3.patch
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
	cp ../arch-aur-pyside2-git/pyside2-git-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-shiboken2-git/python-shiboken2-git-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-shiboken2-git/shiboken2-git-*-$(a).pkg.tar.xz deps

aur:
	docker build -t arch-aur ../arch-aur

.PHONY: all export deps aur
