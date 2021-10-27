resource "azurerm_resource_group" "multiple-resurce-group" {
  name = "multipleRG1"
  location = "East US"
}

# Creating Resource Group for second provider
# bare in mind, we need to give alias to second provider if we intend to use it
resource "azurerm_resource_group" "multiple-resurce-group2" {
    name = "multipleRG2"
    location = "West US"
    provider = azurerm.provider2-westus
}