provider "azurerm" {
    version = "2.0.0"
    subscription_id = var.subscriptionID
    features {}
}

resource "azurerm_resource_group" "DevRG" {
  name     = var.resourceGroupName
  location = var.location

  tags = {
    environment = "Dev"
  }
}