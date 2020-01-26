# Docker images.

This repo contains files to build the following Docker images:

## [`arch`](arch/README.md)

Based on [archlinux/base], this image contains `ONBUILD` triggers to do a full
system update when building any image based on it. No other modifications are
done to the base image.

[archlinux/base]: https://hub.docker.com/r/archlinux/base

## [`arch-aur`](arch-aur/README.md)

Based on `arch`, this is the based image for building all other `arch-aur-*`
images.

## `arch-aur-*`

Used to build individual Arch Linux packages. The generated Docker images will
be configured to build the `.pkg.tar.xz` files that can be exported using a
bind mound. This is automated using the `Makefile` in each directory. Note that
the same `Makefile` is used both inside the container and to build the
container itself.

Example usage:

```sh
cd arch-aur-geogram
make
```

Note that dependencies are not built automatically: these need to be built
first.
