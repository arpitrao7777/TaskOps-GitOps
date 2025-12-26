rgs = {
  rg-1 = {
    name     = "test"
    location = "North Europe"
  }
}

aks = {
  aks-1 = {
    name                = "test32971"
    location            = "North Europe"
    resource_group_name = "test"
    dns_prefix          = "aks1dns"
    node_pool_name      = "default"
    node_count          = 1
    vm_size             = "Standard_D2ps_v5"
  }
}

mysql_db = {
  db-1 = {
    server_name         = "test32971"
    resource_group_name = "test"
    location            = "North Europe"
    admin_username      = "mysqladmin"
    admin_password      = "SecureP@ssw0rd!"
    db_name             = "testerdb1"
    max_size_gb         = 10
  }
}

acrs = {
  acr-1 = {
    name     = "test32971"
    rg_name  = "test"
    location = "North Europe"
  }
}
