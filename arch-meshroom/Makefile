n = meshroom
a = x86_64

all: pkg
	docker build -t attilaolah/arch-$(n) .
	rm -rf pkg

pkg:
	mkdir -p pkg
	cp ../arch-aur-alice-vision/alice-vision-*-$(a).pkg.tar.xz pkg
	cp ../arch-aur-ceres-solver/ceres-solver-*-$(a).pkg.tar.xz pkg
	cp ../arch-aur-flann/flann-*-$(a).pkg.tar.xz pkg
	cp ../arch-aur-geogram/geogram-*-$(a).pkg.tar.xz pkg
	cp ../arch-aur-meshroom/meshroom-*-$(a).pkg.tar.xz pkg
	cp ../arch-aur-opengv-git/opengv-git-*-$(a).pkg.tar.xz pkg
	cp ../arch-aur-pyside2-git/pyside2-git-*-$(a).pkg.tar.xz pkg
	cp ../arch-aur-shiboken2-git/python-shiboken2-git-*-$(a).pkg.tar.xz pkg
	cp ../arch-aur-shiboken2-git/shiboken2-git-*-$(a).pkg.tar.xz pkg

.PHONY: all pkg
