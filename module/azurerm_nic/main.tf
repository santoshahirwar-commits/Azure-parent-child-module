resource "azurerm_network_interface" "nicip1" {
  for_each            = var.nic1
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.nic_rg_name
  ip_forwarding_enabled = false

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet1[each.key].id
    public_ip_address_id          = data.azurerm_public_ip.public_ip_address[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}





