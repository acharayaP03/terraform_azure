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

