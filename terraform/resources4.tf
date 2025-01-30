resource "azurerm_storage_account" "demo_storage3" {
  name                     = "${local.base_name}storage2"
  resource_group_name      = azurerm_resource_group.demo_rg.name
  location                 = azurerm_resource_group.demo_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    env = "test"
  }
  lifecycle {
    ignore_changes = [tags]
  }
}