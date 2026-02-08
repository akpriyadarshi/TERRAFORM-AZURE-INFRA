module "vnet" {
  source         = "../../modules/vnet"
  vnet_name      = "prod-vnet"
  location       = var.location
  resource_group = var.resource_group
}

module "vm" {
  source         = "../../modules/vm"
  vm_name        = "prod-vm"
  location       = var.location
  resource_group = var.resource_group
  subnet_id      = module.vnet.vnet_id
}
