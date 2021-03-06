n = alice-vision
v = 2.2.0-3
a = x86_64

pkg = "$(n)-$(v)-$(a).pkg.tar.xz"
tmp = build

all: $(pkg)

$(pkg): aur deps
	mkdir -p $(tmp)
	docker build -t $(notdir $(CURDIR)) .
	docker run --rm -v "${PWD}/$(tmp):/tmp/$(tmp)" -v "${PWD}/deps:/tmp/deps" $(notdir $(CURDIR))
	cp $(tmp)/$(pkg) .
	rm -rf $(tmp) deps

$(n)/$(pkg):
	sudo sh -c "pacman --noconfirm --upgrade --asdeps /tmp/deps/*-$(a).pkg.tar.xz"
	cd $(n) && makepkg --noconfirm --syncdeps --asdeps --needed --rmdeps --clean

export: $(n)/$(pkg)
	sudo cp $(n)/$(pkg) /tmp/$(tmp)

deps:
	mkdir -p deps
	cp ../arch-aur-ceres-solver/ceres-solver-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-coin-or-lemon/coin-or-lemon-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-flann/flann-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-geogram/geogram-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-opengv-git/opengv-git-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-popsift/popsift-*-$(a).pkg.tar.xz deps
	cp ../arch-aur-uncertainty-framework/uncertainty-framework-*-$(a).pkg.tar.xz deps
	rm deps/popsift-libs-*-$(a).pkg.tar.xz

aur:
	$(MAKE) --directory ../arch-aur

.PHONY: all export deps aur
