terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.1.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "stg-pg-lz-rg"
    storage_account_name = "stgpglzstate001"
    container_name       = "tfstate"
    key                  = "prod.tfstate"
  }
}

provider "azurerm" {
  features {}
}
