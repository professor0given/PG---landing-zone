data "azurerm_subnet" "subnets" {
  for_each             = var.vms
  name                 = each.value.nic_subnet_name
  virtual_network_name = each.value.nic_virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_key_vault" "key_vaults" {
  for_each            = var.vms
  name                = each.value.key_vault_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault_secret" "admin_password" {
  for_each = var.vms
  name = each.value.kv_secret_name
  key_vault_id = data.azurerm_key_vault.key_vaults[each.kay].id
}