data "azurerm_network_interface" "nicid" {
    for_each = var.vmnew1
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}