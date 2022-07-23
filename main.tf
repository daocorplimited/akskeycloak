resource "azurerm_resource_group" "default" {
  name     = "kubernetes"
  location = "West Europe"

  tags = {
    environment = "Dev"
  }
}

output "resource_group_name" {
  value = azurerm_resource_group.default.name
}
