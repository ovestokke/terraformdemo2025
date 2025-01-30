module "fagkveld_storageaccount" {
  source               = "./modules/storageaccount"
  storage_account_name = "capfagkveldstor1"
  resource_group_name  = "capfagkveld-storage"
  location             = "norwayeast"
}
