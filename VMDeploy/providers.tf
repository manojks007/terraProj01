terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "manojrg001"
    storage_account_name = "manojstore01"
    container_name       = "mksterrafcontr"
    key                  = "actions.tfstate"
  }
}

provider "azurerm" {
  features {}
   tenant_id = "0b811265-94d2-42a2-b153-d23a13863be2"
   subscription_id = "7c2b0309-c995-4d44-ad88-0db9e6ba490b"
}

#provider "azuread" {
#   use_cli = "false"
#}