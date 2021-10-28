terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        # version = "1.44.0"
        version = ">= 2.0"
    }
    randome = {
        source = "hashicorp/random"
        version = ">=3.0"
    }
  }
}

provider "azurerm" {
# there is no features block in 1.44 so this is commented out
# feature block is required in v > 2
  features {}
}

# Azure Resource Group
resource "azurerm_resource_group" "resource-group1" {
  name = "resource-group1"
  location = "East US"
}

# Resource to create Random String
resource "random_string" "myrandome" {
  length = 16
  special = false
  upper = false
}

resource "azurerm_storage_account" "mysa" {
  name                     = "mysa${random_string.myrandome.id}"
  resource_group_name      = azurerm_resource_group.resource-group1.name
  location                 = azurerm_resource_group.resource-group1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
#   not available in v 2 above
#   account_encryption_source  = "Microsoft.Storage"
  tags = {
    environment = "staging"
  }
}
