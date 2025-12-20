module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "aks" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_kubernetes_services"
  aks        = var.aks
}

module "acr" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_container_registry"
  acrs       = var.acrs
}

module "db_database" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_database"
  mysql_db   = var.mysql_db
}
