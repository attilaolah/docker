FROM arch-aur
LABEL maintainer="Attila Oláh (atl@google.com)"

COPY --chown=aur:aur ["pyside2-git", "${HOME}/pyside2-git"]
COPY --chown=aur:aur ["PKGBUILD.patch", "${HOME}"]
COPY --chown=aur:aur ["Makefile", "${HOME}"]

ENTRYPOINT ["make", "export"]
