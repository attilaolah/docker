FROM attilaolah/arch:latest
LABEL maintainer="Attila Oláh (atl@google.com)"

COPY ["pkg", "/tmp/pkg"]
RUN ["sh", "-c", "pacman --noconfirm --upgrade /tmp/pkg/*.pkg.tar.xz && rm -rf /tmp/pkg"]

ENTRYPOINT ["Meshroom"]
