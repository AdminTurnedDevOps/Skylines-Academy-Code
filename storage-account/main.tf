provider "azurerm" {
  version = "2.0.0"
  features {}
}

resource "azurerm_storage_account" "skylinesstrg" {
  name                     = var.storageAccountName
  resource_group_name      = var.resourceGroupName
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}