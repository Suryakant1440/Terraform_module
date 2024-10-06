terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = "87439ba6-909d-463e-a3cd-37a82d8f8168"
}