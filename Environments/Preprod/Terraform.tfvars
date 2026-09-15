resource_groups = {
  rg1 = {
    name     = "RG-preprod"
    location = "Central india"
  }
}

storages = {
  stg1 = {
    name                     = "lalantoppreprod"
    resource_group_name      = "RG-preprod"
    location                 = "Central India"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
