resource "azurerm_container_registry" "dashiell" {
  name                = format("cr-dashiell-%s", var.random_id)
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true
}
