terraform {
  required_version = ">= 1.0.0"
  required_providers {
   azurerm = {
      source = "hashicorp/azurerm"
      version = "2.82.0"
      # version = "~> 2.80" for production, ~ will only upgrade to minor version change
    }
  }
}

# Provier block
provider "azurerm" {
    features {
    
    }
}