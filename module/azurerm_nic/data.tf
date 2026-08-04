data "azurerm_subnet" "subnet1" {
    for_each = var.nic1
  name                 = each.value.nic_subnet_name
  virtual_network_name = each.value.nic_virtual_network_name
  resource_group_name  = each.value.nic_rg_name
}

data "azurerm_public_ip" "public_ip_address" {
  for_each = var.nic1
  name                = each.value.nic_public_name
  resource_group_name = each.value.nic_rg_name
}