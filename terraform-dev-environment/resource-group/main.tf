provider "azurerm" {
    version = "1.38.0"
    subscription_id = var.subscriptionID
}

resource "azurerm_resource_group" "DevRG" {
  name     = var.resourceGroupName
  location = var.location

  tags = {
    environment = "Dev"
  }
}