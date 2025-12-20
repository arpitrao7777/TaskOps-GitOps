resource "azurerm_container_registry" "acr" {
  for_each            = var.acrs
  name                = each.value.name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  sku                 = "Premium"
  admin_enabled       = false

  lifecycle {
    prevent_destroy = true
  }
}
