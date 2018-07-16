listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1
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
api_addr = "http://127.0.0.1:8200"
