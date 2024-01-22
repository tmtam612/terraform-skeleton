terraform {
  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"
    storage_account_name = "tam.tranminh"
    container_name       = "tfstate"
    key                  = "workspace/terraform.tfstate"
  }
}