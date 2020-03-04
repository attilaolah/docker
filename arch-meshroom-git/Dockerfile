FROM arch
LABEL maintainer="Attila Oláh (atl@google.com)"

COPY ["pkg", "/tmp/pkg"]
RUN ["sh", "-c", "pacman --noconfirm --upgrade /tmp/pkg/*.pkg.tar.xz && rm -rf /tmp/pkg"]
ENV LD_LIBRARY_PATH="/usr/lib/Meshroom-2019.2.0/lib"

ENTRYPOINT ["Meshroom"]
