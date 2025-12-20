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

