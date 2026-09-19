

vms = {
  frontend01 = {
    preprod-nic-name                  = "preprod-frontend-01"
    vm-name                           = "preprod-Frontend-01"
    location                          = "centralIndia"
    resource_group_name               = "RG-preprod"
    vm_size                           = "Standard_DS1_v2"
    storage_image_publisher           = "Canonical"
    storage_image_offer               = "0001-com-ubuntu-server-jammy"
    storage_image_sku                 = "22_04-lts"
    storage_image_version             = "latest"
    storage_os_disk_name              = "preprod-frontend-osdisk-01"
    storage_os_disk_caching           = "ReadWrite"
    storage_os_disk_create_option     = "FromImage"
    storage_os_disk_managed_disk_type = "Standard_LRS"
    computer_name                     = "frontend01"
    admin_username                    = "testadmin"
    key_vault_name                    = "kv-preprod"
  }
}
