module "rgs" {
  source = "../../module/rg"
  rgs    = var.dev-rgs
}

module "vnets" {
  depends_on = [module.rgs]
  source     = "../../module/vnet"
  vnets      = var.dev-vnets
}
module "subnet" {
  depends_on = [module.vnets]
  source     = "../../module/subnet"
  subnet     = var.dev-subnet
}

# module "vms" {
#   depends_on = [var.dev-rgs, var.dev-vnets, var.dev-subnet]
#   source     = "../../module/vm"
#   vms        = var.dev-vms
#   subnet_ids = module.subnet.subnet_ids
# }

module "vm-module" {
  depends_on = [module.subnet, module.rgs, module.vnets]
  source     = "../../module/vm"
  vms        = var.dev-vms
  subnet_ids = var.dev-subnet
}

