resource "azurerm_network_interface" "nic" {
  for_each            = var.vms
  name                = each.value.preprod-nic
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = data.azurerm_subnet.subnets[eack.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "main" {
  for_each              = var.vms
  name                  = each.value.vm-name
  location              = each.value.location
  resource_group_name   = each.value.resource_group_namename
  network_interface_ids = [azurerm_network_interface.nic[each.key].id]
  vm_size               = each.value.vm_size

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = each.value.storage_image_publisher
    offer     = each.value.storage_image_offer
    sku       = each.value.storage_image_sku
    version   = each.value.storage_image_version
  }
  storage_os_disk {
    name              = each.value.storage_os_disk_name
    caching           = each.value.storage_os_disk_caching 
    create_option     = each.value.storage_os_disk_create_option
    managed_disk_type = each.value.storage_os_disk_managed_disk_type
  }
  os_profile {
    computer_name  = each.value.computer_name
    admin_username =  each.value.admin_username
    admin_password = data.azurerm_key_value_secret.admin_password[each.key].value
  }
}
