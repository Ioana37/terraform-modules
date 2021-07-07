resource "azurerm_iothub" "dashiell" {
  name                          = "iot-dashiell-${var.random_id}"
  resource_group_name           = var.rg_name
  location                      = var.location
  public_network_access_enabled = true

  sku {
    name     = "S1"
    capacity = "1"
  }

  tags = {
    purpose = "testing"
  }
}
