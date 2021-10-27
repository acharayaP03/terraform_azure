terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "2.82.0"
    }
  }
}

# multiple provider blocks will be defined here 
# first provider
provider "azurerm" {
  features {
    
  }
}

# Second provider
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false
    }
  }
  alias = "provider2-westus"
}