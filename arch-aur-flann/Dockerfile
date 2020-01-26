FROM attilaolah/arch-aur:latest
MAINTAINER Attila Oláh (atl@google.com)

COPY --chown=aur:aur ["flann", "${HOME}/flann"]
COPY --chown=aur:aur ["Makefile", "${HOME}"]

ENTRYPOINT ["make", "export"]
