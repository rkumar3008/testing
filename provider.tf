terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "4.34.0"
    }
  }
}
provider "azurerm" {
    subscription_id = "45135143-764a-43bc-8ae1-5ac75b1ffe37"
    features {
      
    }  
}

resource "azurerm_resource_group" "rk-rg1" {
    name = "us-rg1"
    location = "east us"
}

# resource "azurerm_storage_account" "us-stg" {
#     name = "usstg12"
#     resource_group_name = azurerm_resource_group.rk-rg1.name
#     location = azurerm_resource_group.rk-rg1.location
#     account_tier = "Standard"
#     account_replication_type = "LRS"
# }
