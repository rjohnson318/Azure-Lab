resource "azurerm_resource_group" "main-resources" {
  name     = "${var.environment}-${var.location}-RGP"
  location = var.location
}
resource "azurerm_resource_group" "sweepaitest12345testing" {
  name     = "sweepaitest12345testing"
  location = var.location
}