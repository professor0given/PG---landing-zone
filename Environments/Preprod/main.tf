module "rg" {
  source = "../../Modules/azurerm_resource_group"
  rgs    = var.resource_groups
}

module "stgs" {
  depends_on = [module.rg]
  source     = "../../Modules/azurerm_storage_account"
  stg        = var.storages
}

module "vnet" {
  source = "../../Modules/azurerm_virtual_network"
  vnets = var.virtual_networks
}

module "subnet" {
  source = "../../Modules/azurerm_subnet"
  subnets = var.subnets
}