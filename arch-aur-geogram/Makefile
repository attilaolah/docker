n = geogram
v = 1.7.1-1
a = x86_64

pkg = "$(n)-$(v)-$(a).pkg.tar.xz"
tmp = build

all: $(pkg)

$(pkg): aur
	mkdir -p $(tmp)
	docker build -t $(notdir $(CURDIR)) .
	docker run --rm -v "${PWD}/$(tmp):/tmp/$(tmp)" $(notdir $(CURDIR))
	cp $(tmp)/$(pkg) .
	rm -rf $(tmp)

$(n)/$(pkg):
	cd $(n) && makepkg --noconfirm --syncdeps --asdeps --needed --rmdeps --clean

export: $(n)/$(pkg)
	sudo cp $(n)/$(pkg) /tmp/$(tmp)

aur:
	$(MAKE) --directory ../arch-aur

.PHONY: all export aur
