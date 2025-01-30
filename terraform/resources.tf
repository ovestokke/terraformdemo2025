resource "azurerm_resource_group" "demo_rg" {
  name     = "capfagkveld-main"
  location = "West Europe"
}

resource "azurerm_storage_account" "demo_storage0" {
  name                     = "capfagkveldstorage0"
  resource_group_name      = azurerm_resource_group.demo_rg.name
  location                 = azurerm_resource_group.demo_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
