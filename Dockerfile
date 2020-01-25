FROM debian:stretch

ENV DEPS \
    build-essential

RUN set -xe \
    # install deps
    && apt update -qq \
    && DEBIAN_FRONTEND=noninteractive apt install --no-install-recommends -y $DEPS \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/*

COPY src /usr/local/src/lyra2v2

WORKDIR /usr/local/src/lyra2v2

