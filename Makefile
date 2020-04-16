%.img:
	docker build -t $(patsubst %/,%,$(dir $@)) $(dir $@)
	docker save $(patsubst %/,%,$(dir $@)) > $@

arch-aur/arch-aur.img: arch/arch.img

%.pkg.tar.xz: arch-aur/arch-aur.img
	cd $(dir $@) && make
