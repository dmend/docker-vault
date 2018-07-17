FROM fedora:28

RUN dnf upgrade -y
RUN dnf install -y unzip

ADD vault_0.10.1_linux_amd64.zip /opt
RUN mkdir /opt/vault && \
    unzip /opt/vault_0.10.1_linux_amd64.zip -d /opt/vault
ADD config.hcl /opt/vault
ADD fullchain.pem /opt/vault
ADD privkey.pem /opt/vault

EXPOSE 8200 8201

CMD ["/opt/vault/vault", "server", "-config=/opt/vault/config.hcl"]
