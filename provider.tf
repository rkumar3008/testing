terraform {
  backend "azurerm" {
    resource_group_name = "backend-rg"
    storage_account_name = "stgbknd"
    container_name = "statefile"
    key = "terraform.tfstat"
  }
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
    name = "us-rg"
    location = "east us"
}

resource "azurerm_storage_account" "us-stg" {
    name = "usstg1"
    resource_group_name = azurerm_resource_group.rk-rg1.name
    location = azurerm_resource_group.rk-rg1.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}