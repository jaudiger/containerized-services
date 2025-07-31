ui            = true
disable_mlock = true
log_level     = "info"

storage "file" {
  path = "/vault/data"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = true
}

api_addr = "http://127.0.0.1:8200"
