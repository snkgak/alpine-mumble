FROM alpine:3.6
MAINTAINER ScottK <snkgak@yahoo.com>

RUN useradd -D -u 1000 mumble \
    && apk add --update murmur icu-libs \
    && rm -rf /var/cache/apk/* \
    && mkdir /data \
    && chown 1000 /data

ADD ["mumble-server.ini", "/config/mumble-server.ini"]

VOLUME ["/data", "/config"]
EXPOSE 64738/udp

USER mumble
ENTRYPOINT ["/usr/bin/murmurd", "-fg", "-ini", "/config/mumble-server.ini"]
