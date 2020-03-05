FROM arch-aur
LABEL maintainer="Attila Oláh (atl@google.com)"

COPY --chown=aur:aur ["meshroom", "${HOME}/meshroom"]
COPY --chown=aur:aur ["Makefile", "${HOME}"]

# Patches for the container file system:
COPY --chown=aur:aur ["urllib3.patch", "${HOME}"]

ENTRYPOINT ["make", "export"]
