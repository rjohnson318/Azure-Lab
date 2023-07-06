# Create resource group
resource "azurerm_resource_group" "main-resources" {
  name     = "${var.environment}-${var.location}-RGP"
  location = var.location
}