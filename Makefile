all:
	cd arch && make && $(MAKE)
	cd arch-aur && $(MAKE)
	cd arch-aur-ceres-solver && $(MAKE)
	cd arch-aur-coin-or-lemon && $(MAKE)
	cd arch-aur-flann && $(MAKE)
	cd arch-aur-geogram && $(MAKE)
	cd arch-aur-meshroom-git && $(MAKE)
	cd arch-aur-meshroom && $(MAKE)
	cd arch-aur-opengv-git && $(MAKE)
	cd arch-aur-popsift && $(MAKE)
	cd arch-aur-pyside2-git && $(MAKE)
	cd arch-aur-shiboken2-git && $(MAKE)
	cd arch-aur-uncertainty-framework && $(MAKE)
	cd arch-aur-alice-vision && $(MAKE)
	cd arch-meshroom && $(MAKE)
	cd arch-meshroom-git && $(MAKE)

.PHONY: all
