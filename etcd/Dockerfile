FROM fedora:29

LABEL maintainer="Douglas Mendizábal <douglas@redrobot.io>"

RUN dnf upgrade -y --refresh
RUN dnf install -y etcd

ENV ETCD_LISTEN_CLIENT_URLS=http://0.0.0.0:2379 \
    ETCD_ADVERTISE_CLIENT_URLS=http://etcd:2379 \
    ETCD_UNSUPPORTED_ARCH=arm64

EXPOSE 2379

CMD ["/usr/bin/etcd"]
