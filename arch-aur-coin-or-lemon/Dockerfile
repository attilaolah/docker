FROM attilaolah/arch-aur:latest
MAINTAINER Attila Oláh (atl@google.com)

COPY --chown=aur:aur ["coin-or-lemon", "${HOME}/coin-or-lemon"]
COPY --chown=aur:aur ["Makefile", "${HOME}"]

ENTRYPOINT ["make", "export"]
