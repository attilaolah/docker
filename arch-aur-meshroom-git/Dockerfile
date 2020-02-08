FROM arch-aur
LABEL maintainer="Attila Oláh (atl@google.com)"

COPY --chown=aur:aur ["meshroom-git", "${HOME}/meshroom-git"]
COPY --chown=aur:aur ["Makefile", "${HOME}"]

# Patches for the container file system:
COPY --chown=aur:aur ["pyside2.patch", "${HOME}"]
COPY --chown=aur:aur ["shiboken2.patch", "${HOME}"]
COPY --chown=aur:aur ["urllib3.patch", "${HOME}"]

ENTRYPOINT ["make", "export"]
