

locals {
  storage_accounts = ["${local.base_name}st21", "${local.base_name}st22", "${local.base_name}st23"]
  count = 4
}

module "storage_loop" {
  source = "./modules/storageaccount"

  for_each = toset(local.storage_accounts)

  storage_account_name = each.value
  resource_group_name  = azurerm_resource_group.demo_rg.name
  location             = azurerm_resource_group.demo_rg.location
}

module "storage_loop" {
  source = "./modules/storageaccount"

  count = local.count

  storage_account_name = "${base_name}st30${count.index}"
  resource_group_name  = azurerm_resource_group.demo_rg.name
  location             = azurerm_resource_group.demo_rg.location
}