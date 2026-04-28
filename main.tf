terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.65.0"

    }
  }

  backend "azurerm" {
    resource_group_name = "myrg"
    storage_account_name = "iphone"
    container_name = "mycontainer"
key = "my.tfstate"
  }
}
provider "azurerm" {
  features {

  }
  subscription_id = "7e279a1f-92f9-40ed-af16-0d4119fce195"
}
resource "azurerm_resource_group" "prodrg" {
  name     = "prod_rg"
  location = "japaneast"
}
