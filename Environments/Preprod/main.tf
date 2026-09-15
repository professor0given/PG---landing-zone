module "rg" {
  source = "../../Modules/azurerm_resource_group"
  rgs    = var.resource_groups
}

module "stgs" {
  depends_on = [module.rg]
  source     = "../../Modules/azurerm_storage_account"
  stg        = var.storages
}
