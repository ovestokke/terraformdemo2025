resource "azurerm_storage_account" "demo_storage11" {
  name                            = "${local.base_name}storage11"
  resource_group_name             = azurerm_resource_group.demo_rg.name
  location                        = azurerm_resource_group.demo_rg.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  default_to_oauth_authentication = true
  min_tls_version                 = "TLS1_2"
  public_network_access_enabled   = false
}
