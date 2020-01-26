FROM arch-aur
LABEL maintainer="Attila Oláh (atl@google.com)"

COPY --chown=aur:aur ["opengv-git", "${HOME}/opengv-git"]
COPY --chown=aur:aur ["Makefile", "${HOME}"]

ENTRYPOINT ["make", "export"]
