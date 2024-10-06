variable "surya_vnet_var" {
    type = map(any)
      
}

resource "azurerm_virtual_network" "surya_vnet" {
  for_each = var.surya_vnet_var
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space = each.value.address_space
}