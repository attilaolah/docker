FROM arch-aur
LABEL maintainer="Attila Oláh (atl@google.com)"

COPY --chown=aur:aur ["shiboken2-git", "${HOME}/shiboken2-git"]
COPY --chown=aur:aur ["PKGBUILD.patch", "${HOME}"]
COPY --chown=aur:aur ["Makefile", "${HOME}"]

ENTRYPOINT ["make", "export"]
