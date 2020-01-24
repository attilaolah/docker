FROM archlinux/base:latest
MAINTAINER Attila Oláh (atl@google.com)

# Update the system and replace the mirror list:
RUN ["pacman", "--noconfirm", "--sync", "--refresh", "--sysupgrade"]
RUN ["rm", "/etc/pacman.d/mirrorlist.pacnew"]

# Clean up:
RUN ["pacman", "--noconfirm", "--sync", "--clean", "--clean"]

CMD ["/usr/bin/bash"]
