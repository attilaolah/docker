FROM attilaolah/arch:latest
MAINTAINER Attila Oláh (atl@google.com)

# Install dependencies with --asdeps, so we can clean them up later.
RUN ["pacman", "--noconfirm", "--sync", "--asdeps", "--needed", "base-devel", "git"]

# Create a new user for running 'makepkg', which cannot run as root.
RUN ["useradd", "--user-group", "--create-home", "--system", "aur"]
COPY ["sudoers", "/etc/sudoers.d/10-aur-nopasswd"]

USER aur
ENV HOME /home/aur
WORKDIR ${HOME}
