FROM archlinux/base:latest
LABEL maintainer="Attila Oláh (atl@google.com)"

# Update the system and replace the mirror list:
ONBUILD RUN ["pacman", "--noconfirm", "--sync", "--refresh", "--sysupgrade"]
ONBUILD RUN ["rm", "/etc/pacman.d/mirrorlist.pacnew"]

# Clean up:
ONBUILD RUN ["pacman", "--noconfirm", "--sync", "--clean", "--clean"]

CMD ["bash"]
