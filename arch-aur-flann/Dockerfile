FROM attilaolah/arch-aur:latest
MAINTAINER Attila Oláh (atl@google.com)

ADD flann ${HOME}

ENTRYPOINT ["makepkg", "--noconfirm", "--syncdeps", "--asdeps", "--needed", "--rmdeps", "--clean"]
