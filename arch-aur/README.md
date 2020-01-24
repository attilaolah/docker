# `Dockerfile` for [attilaolah/arch-aur]

This image creates the necessary environment for building packages from [AUR].
The image itself is rather fat — the intention is not to layer other images on
top of this one, but rather, derive builder images from this one, used to build
packages that can then be installed by `pacman`.

The final packages can then be run either on a vanilla Arch Linux system, or in
a container based on [attilaolah/arch] or even [archlinux/base].

[AUR]: https://aur.archlinux.org
[archlinux/base]: https://hub.docker.com/r/archlinux/base
[attilaolah/arch-aur]: https://hub.docker.com/r/attilaolah/arch-aur
[attilaolah/arch]: https://hub.docker.com/r/attilaolah/arch
