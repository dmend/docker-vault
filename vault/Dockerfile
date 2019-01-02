FROM fedora:28
ARG VAULT_PACKAGE=vault_1.0.0_linux_arm64.zip

RUN dnf upgrade -y
RUN dnf install -y unzip

ADD $VAULT_PACKAGE /opt
RUN mkdir /opt/vault && \
    unzip /opt/$VAULT_PACKAGE -d /opt/vault
ADD config.hcl /opt/vault
ADD fullchain.pem /opt/vault
ADD privkey.pem /opt/vault

EXPOSE 8200 8201

CMD ["/opt/vault/vault", "server", "-config=/opt/vault/config.hcl"]
