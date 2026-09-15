terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "RG-landingZone"
    storage_account_name = "lalantop"
    container_name       = "tfstate-preprod"
    key                  = "Preprod.tfstate"
  }
}

provider "azurerm" {
  features {}
}
