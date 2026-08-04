rg = {
  rg1 = {
    name     = "ttrg"
    location = "centralindia"
  }
}

subnet1 = {
  frontendsubnet = {
    name                 = "frontsubnet1"
    resource_group_name  = "ttrg"
    virtual_network_name = "ttvnet1"
    address_prefixes     = ["10.0.1.0/24"]

  }
  backendsubnet = {
    name                 = "backsubnet1"
    resource_group_name  = "ttrg"
    virtual_network_name = "ttvnet1"
    address_prefixes     = ["10.0.2.0/24"]

  }
}
vnet = {

  vnet1 = {
    name                = "ttvnet1"
    location            = "centralindia"
    resource_group_name = "ttrg"
    address_space       = ["10.0.0.0/16"]

  }
}

publicip1 = {
  pup1 = {
    name                = "frontendpup1"
    resource_group_name = "ttrg"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  pup2 = {
    name                = "backendpup1"
    resource_group_name = "ttrg"
    location            = "centralindia"
    allocation_method   = "Static"
  }

}
nic1 = {
  nicip1 = {
    nic_name                 = "nic-frontend-vm"
    nic_location             = "centralindia"
    nic_rg_name              = "ttrg"
    nic_virtual_network_name = "ttvnet1"
    nic_subnet_name          = "frontsubnet1"
    nic_public_name          = "frontendpup1"
  }
  nicip2 = {
    nic_name                 = "nic-backend-vm"
    nic_location             = "centralindia"
    nic_rg_name              = "ttrg"
    nic_virtual_network_name = "ttvnet1"
    nic_subnet_name          = "backsubnet1"
    nic_public_name          = "backendpup1"
  }
}

vmnew1 = {

  vm11 = {
    nic_name            = "nic-frontend-vm"
    vm_name             = "frontend-machine1"
    resource_group_name = "ttrg"
    location            = "centralindia"
    vm_size             = "Standard_D4_v5"
    admin_username      = "adminuser"
    admin_password      = "devops@123"
    image_publisher     = "Canonical"
    image_offer         = "0001-com-ubuntu-server-jammy"
    image_sku           = "22_04-lts"
    image_version       = "latest"


  }

  vm22 = {
    nic_name            = "nic-backend-vm"
    vm_name             = "backend-machine1"
    resource_group_name = "ttrg"
    location            = "centralindia"
    vm_size             = "Standard_D4_v5"
    admin_username      = "adminuser"
    admin_password      = "devops@123"
    image_publisher     = "Canonical"
    image_offer         = "0001-com-ubuntu-server-jammy"
    image_sku           = "22_04-lts"
    image_version       = "latest"
  }


}
