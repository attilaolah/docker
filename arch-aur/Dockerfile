FROM attilaolah/arch:latest
MAINTAINER Attila Oláh (atl@google.com)

# Install dependencies with --asdeps, so we can clean them up later.
RUN ["pacman", "--noconfirm", "--sync", "--asdeps", "--needed", "base-devel", "git"]

# Create a new user for running 'makepkg', which cannot run as root.
RUN ["useradd", "--user-group", "--create-home", "--system", "aur"]

# By default, spawn the 'aur' user's login shell:
CMD ["/usr/sbin/sudo", "--login", "--user=aur"]
