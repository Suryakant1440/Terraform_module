module "surya_rg1_module" {
  source        = "../../modules/Resource_group"
  surya_rg1_var = var.surya_rg1_var
}
module "surya_stg1_module" {
  depends_on     = [module.surya_rg1_module]
  source         = "../../modules/Storage_account"
  surya_stg1_var = var.surya_stg1_var
}
module "surya_vnet_module" {
  depends_on     = [module.surya_rg1_module]
  source         = "../../modules/Virtual_network"
  surya_vnet_var = var.surya_vnet_var
}
module "surya_subnet_module" {
  depends_on       = [module.surya_vnet_module]
  source           = "../../modules/Subnet"
  surya_subnet_var = var.surya_subnet_var
}
module "vm_module" {
    depends_on = [ module.surya_subnet_module ]
    source = "../../modules/Virtual_machine"
    surya_vm_var = var.surya_vm_var
 
}
module "bastion_module" {
  depends_on = [ module.surya_subnet_module ]
  source = "../../modules/bastion"
  surya_bastion_var = var.surya_bastion_var  
}