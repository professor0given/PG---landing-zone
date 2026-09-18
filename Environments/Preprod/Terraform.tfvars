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

virtual_networks = {
  vnet1 = {
    name                = "vnet-preprod"
    location            = "Central India"
    resource_group_name = "RG-preprod"
    address_space       = ["10.0.0.0"]
  }
}

subnets = {
  subnet1 = {
    name                 = "subnet-preprod"
    virtual_network_name = "vnet-preprod"
    resource_group_name  = "RG-preprod"
    address_prefixes     = ["10.0.1.0"]
  }
}
