n = uncertainty-framework
v = 1.2.0-4
a = x86_64

pkg = "$(n)-$(v)-$(a).pkg.tar.xz"
tmp = build

all: $(pkg)

$(pkg): aur deps
	mkdir -p $(tmp)
	docker build -t arch-aur-$(n) .
	docker run --rm -v "${PWD}/$(tmp):/tmp/$(tmp)" -v "${PWD}/deps:/tmp/deps" arch-aur-$(n)
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

aur:
	docker build -t arch-aur ../arch-aur

.PHONY: all export deps aur
