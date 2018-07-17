listener "tcp" {
  address = "0.0.0.0:8200"
  tls_cert_file = "/opt/vault/fullchain.pem"
  tls_key_file = "/opt/vault/privkey.pem"
}
storage "mysql" {
  username = "vault"
  password = "vaultdbpasswd"
  database = "vault"
  address  = "mariadb:3306"
}

ha_storage "etcd" {
  ha_enabled = "true"
  address = "http://etcd:2379"
}
api_addr = "https://vault.redrobot.io:8200"
