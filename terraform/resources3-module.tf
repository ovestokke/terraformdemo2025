module "fagkveld_storageaccount" {
  source               = "./modules/storageaccount"
  storage_account_name = "capfagkveldstor1"
  resource_group_name  = azurerm_resource_group.storage_rg.name
  location             = azurerm_resource_group.storage_rg.location
}

resource "azurerm_resource_group" "storage_rg" {
  name     = "capfagkveld-storage"
  location = "norwayeast"
  
}