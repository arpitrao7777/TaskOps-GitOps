variable "rgs" {
  description = "A map of resource groups to create"
  type = map(object({
    name     = string
    location = string
  }))
}

variable "aks" {
  description = "Configuration for Azure Kubernetes Service (AKS)"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    dns_prefix          = string
    node_count          = number
    node_pool_name      = string
    vm_size             = string
  }))
}

variable "mysql_db" {
  description = "A map of databases to create."
  type = map(object({
    server_name         = string
    resource_group_name = string
    location            = string
    admin_username      = string
    admin_password      = string
    db_name             = string
    max_size_gb         = number
  }))
}

variable "acrs" {
  description = "A map of Azure Container Registry instances to create"
  type = map(object({
    name     = string
    rg_name  = string
    location = string
  }))
}
