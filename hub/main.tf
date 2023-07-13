resource "azurerm_storage_account" "storagetest9887s" {
  name                     = "storagetest9887s"
  resource_group_name      = azurerm_resource_group.hub.name
  location                 = azurerm_resource_group.hub.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
