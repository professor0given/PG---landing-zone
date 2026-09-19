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
    subnet_name          = "subnet-preprod-frontend"
    virtual_network_name = "vnet-preprod"
    resource_group_name  = "RG-preprod"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet1 = {
    subnet_name          = "subnet-preprod-backend"
    virtual_network_name = "vnet-preprod"
    resource_group_name  = "RG-preprod"
    address_prefixes     = ["10.0.2.0/24"]
  }

  subnet1 = {
    subnet_name          = "subnet-preprod-database"
    virtual_network_name = "vnet-preprod"
    resource_group_name  = "RG-preprod"
    address_prefixes     = ["10.0.3.0/24"]
  }

  subnet1 = {
    subnet_name          = "subnet-preprod-Bastion"
    virtual_network_name = "vnet-preprod"
    resource_group_name  = "RG-preprod"
    address_prefixes     = ["10.0.4.0/24"]
  }

  subnet1 = {
    subnet_name          = "subnet-preprod-app_gateway"
    virtual_network_name = "vnet-preprod"
    resource_group_name  = "RG-preprod"
    address_prefixes     = ["10.0.5.0/24"]
  }
}

