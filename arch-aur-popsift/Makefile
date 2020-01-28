n = popsift
v = 1.0.0-2
a = x86_64

pkg = "$(n)-$(v)-$(a).pkg.tar.xz"
lib = "$(n)-libs-$(v)-$(a).pkg.tar.xz"

all: aur
	mkdir -p build
	docker build -t arch-aur-$(n) .
	docker run --rm -v "${PWD}/build:/tmp/build" arch-aur-$(n)
	cp build/$(pkg) .
	cp build/$(lib) .
	rm -rf build

aur:
	docker build -t arch-aur ../arch-aur

export: $(n)/$(pkg)
	sudo cp $(n)/$(pkg) /tmp/build
	sudo cp $(n)/$(lib) /tmp/build

$(n)/$(pkg):
	cd $(n) && makepkg --noconfirm --syncdeps --asdeps --needed --rmdeps --clean

.PHONY: all build export aur
