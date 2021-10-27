# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create Resource Group
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus2"
  name = "my_demo_rg1"
}