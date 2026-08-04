module "rg" {
  source = "../../module/azurerm_resource_group/"

  rg = var.rg
}
module "vnet" {
  depends_on = [module.rg]

  source = "../../module/azurerm_virtual_network/"

  vnet = var.vnet
}

module "subnet1" {
  depends_on = [module.vnet, module.rg]
  source     = "../../module/azurerm_subnet1/"

  subnet1 = var.subnet1
}

module "publicip1" {
  depends_on = [ module.rg ]
  source = "../../module/azurerm_pup_ip/"

  publicip1 = var.publicip1
}

module "nic1" {
  depends_on = [module.subnet1, module.publicip1]
  source     = "../../module/azurerm_nic"
  nic1       = var.nic1
}
module "vmnew1" {
  depends_on = [module.nic1, module.subnet1]

  source = "../../module/azurerm_virtual_machine"
  vmnew1 = var.vmnew1

}
