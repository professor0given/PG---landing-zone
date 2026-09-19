resource "azurerm_key_vault" "key_vaults" {
  for_each                    = var.kvs
  name                        = each.value.key_vault_name
  location                    = each.value.location
  resource_group_name         = each.value.resource_group_name
  rbac_authorization_enabled  = each.value.rbac_authorization_enabled
  enabled_for_disk_encryption = each.value.enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = each.value.soft_delete_retention_days
  purge_protection_enabled    = each.value.purge_protection_enabled
  sku_name                    = each.value.kv_sku_name
}


resource "azurerm_key_vault_secret" "admin_password" {
  for_each = var.kvs
  name         = each.value.kv_secret_name
  value        = "Devops@1234"
  key_vault_id = azurerm_key_vault.key_vaults[each.key].id
}
