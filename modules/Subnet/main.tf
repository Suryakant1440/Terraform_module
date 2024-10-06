variable "surya_subnet_var" {
  type = map(any)
  }

resource "azurerm_subnet" "surya_subnet" {
    for_each = var.surya_subnet_var
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
    address_prefixes = each.value.address_prefixes
   
}