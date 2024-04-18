# provider Block
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.99.0"
    }
  }
}

provider "azurerm" {
	features {}
}

# creating resource group
resource "azurerm_resource_group" "RG" {
  name     = var.RGName
  location = var.location
}
# creating storage account
resource "azurerm_storage_account" "StgAcc" {
  name                     = var.StgAccName
  resource_group_name      = azurerm_resource_group.RG.name
  location                 = azurerm_resource_group.RG.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}