provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    //add azure prodiver version
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.86.0"
    }
  }
}