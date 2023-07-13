create_rg.tf

resource "azurerm_resource_group" "sweepaitest12345" {
  name     = "sweepaitest12345"
  location = var.location
}
