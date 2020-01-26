FROM attilaolah/arch:latest
LABEL maintainer="Attila Oláh (atl@google.com)"

# Install common build dependencies.
RUN ["pacman", "--noconfirm", "--sync", "--needed", "base-devel", "git"]

# Create a new user for running 'makepkg', which cannot run as root.
RUN ["useradd", "--user-group", "--create-home", "--system", "aur"]
COPY ["sudoers", "/etc/sudoers.d/10-aur-nopasswd"]

USER aur
ENV HOME /home/aur
WORKDIR ${HOME}
