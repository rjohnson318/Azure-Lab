resource "azurerm_storage_account" "diagstoragetestsweepai" {
  name                     = "diagstoragetestsweepai"
  resource_group_name      = azurerm_resource_group.dev.name
  location                 = azurerm_resource_group.dev.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
