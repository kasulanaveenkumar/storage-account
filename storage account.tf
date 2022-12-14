resource "azurerm_resource_group" "create-rg" {
  name     = "testing"
  location = "eastus"
}

resource "azurerm_storage_account" "create-sa" {
  name                     = "test-storage"
  resource_group_name      = azurerm_resource_group.create-rg.name
  location                 = azurerm_resource_group.create-rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
