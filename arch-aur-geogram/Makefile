n = geogram
v = 1.7.1-1
a = x86_64

pkg = "$(n)-$(v)-$(a).pkg.tar.xz"
tmp = build

all: $(pkg)

$(pkg):
	mkdir -p $(tmp)
	docker build -t arch-aur-$(n) .
	docker run -v "${PWD}/$(tmp):/tmp/$(tmp)" arch-aur-$(n)
	cp $(tmp)/$(pkg) .
	rm -rf $(tmp)

$(n)/$(pkg):
	cd $(n) && makepkg --noconfirm --syncdeps --asdeps --needed --rmdeps --clean

export: $(n)/$(pkg)
	sudo cp $(n)/$(pkg) /tmp/$(tmp)

.PHONY: all export
