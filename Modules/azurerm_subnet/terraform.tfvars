subnets = {
  subnet1 = {
    name                 = "subnet-preprod"
    virtual_network_name = "vnet-preprod"
    resource_group_name  = "RG-preprod"
    address_prefixes     = ["10.0.1.0"]
  }
}
