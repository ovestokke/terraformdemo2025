module "fagkveld_storageaccount1" {
  source               = "./modules/storageaccount"
  storage_account_name = "capfagkveldstor1"
  resource_group_name  = azurerm_resource_group.demo_rg.name
  location             = azurerm_resource_group.demo_rg.location
}
