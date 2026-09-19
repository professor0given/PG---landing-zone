kvs = {
  kv1 = {
    key_vault_name              = "kv-preprod"
    location                    = "centralindia"
    resource_group_name         = "RG-preprod"
    rbac_authorization_enabled  = false
    enabled_for_disk_encryption = true
    soft_delete_retention_days  = 7
    purge_protection_enabled    = true
    kv_sku_name                    = "standard"
    kv_secret_name              = "kv_secret_admin_password"
  }
}

