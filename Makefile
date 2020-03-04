all:
	$(MAKE) --directory=arch
	$(MAKE) --directory=arch-aur
	$(MAKE) --directory=arch-aur-ceres-solver
	$(MAKE) --directory=arch-aur-coin-or-lemon
	$(MAKE) --directory=arch-aur-flann
	$(MAKE) --directory=arch-aur-geogram
	$(MAKE) --directory=arch-aur-meshroom-git
	$(MAKE) --directory=arch-aur-meshroom
	$(MAKE) --directory=arch-aur-opengv-git
	$(MAKE) --directory=arch-aur-popsift
	$(MAKE) --directory=arch-aur-pyside2-git
	$(MAKE) --directory=arch-aur-shiboken2-git
	$(MAKE) --directory=arch-aur-uncertainty-framework
	$(MAKE) --directory=arch-aur-alice-vision
	$(MAKE) --directory=arch-meshroom
	$(MAKE) --directory=arch-meshroom-git

.PHONY: all
