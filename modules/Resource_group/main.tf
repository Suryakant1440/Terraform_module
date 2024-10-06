variable "surya_rg1_var" {
    type = map(any)
      
}

resource "azurerm_resource_group" "surya_rg" {
    for_each = var.surya_rg1_var
    name = each.value.name
    location = each.value.location
  
}