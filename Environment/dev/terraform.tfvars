surya_rg1_var = {
  rg1 = {
    name     = "surya_rg1"
    location = "west us"
  }
  rg2 = {
    name     = "surya_rg2"
    location = "west us"
  }
}
surya_stg1_var = {
  stg1 = {
    name                     = "suryastg111"
    resource_group_name      = "surya_rg1"
    location                 = "west us"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  stg2 = {
    name                     = "suryastg222"
    resource_group_name      = "surya_rg2"
    location                 = "west us"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
surya_vnet_var = {
  vnet1 = {
    name                = "surya_vnet1"
    location            = "west us"
    resource_group_name = "surya_rg1"
    address_space       = ["10.1.0.0/16"]
  }
  vnet2 = {
    name                = "surya_vnet2"
    location            = "west us"
    resource_group_name = "surya_rg2"
    address_space       = ["10.1.0.0/16"]
  }
}
surya_subnet_var = {
  subnet1 = {
    name                 = "surya_subnet1"
    resource_group_name  = "surya_rg1"
    virtual_network_name = "surya_vnet1"
    address_prefixes     = ["10.1.1.0/24"]
  }
  subnet2 = {
    name                 = "surya_subnet2"
    resource_group_name  = "surya_rg2"
    virtual_network_name = "surya_vnet2"
    address_prefixes     = ["10.1.2.0/24"]
  }
  subnet3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "surya_rg1"
    virtual_network_name = "surya_vnet1"
    address_prefixes     = ["10.1.3.0/24"]
  }
}
surya_vm_var = {
  vm1 = {
    subnet_name ="surya_subnet1"
    resource_group_name  = "surya_rg1"
    virtual_network_name = "surya_vnet1"
    nic_name = "surya-nic1"
    location = "west us"
    vm_name = "vm1"
  }
  vm2 = {
    subnet_name ="surya_subnet1"
    resource_group_name  = "surya_rg1"
    virtual_network_name = "surya_vnet1"
    nic_name = "surya-nic2"
    location = "west us"
    vm_name = "vm2"
  }
}
surya_bastion_var = {
  bastion = {
    subnet_name               = "AzureBastionSubnet"
    resource_group_name  = "surya_rg1"
    virtual_network_name = "surya_vnet1"
    pip_name = "surya_pip"
    location = "west us"
    bastion_name = "bastion1"




  }
}