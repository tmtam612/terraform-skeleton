resource "azurerm_storage_account" "this" {
  name                     = "${var.project_name}-${var.storage_abbrevation}-${var.storage_profile}-${var.environment}-${var.location}-${var.storage_account_instance_count}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_container" "this" {
  name                  = "${var.project_name}-${var.storage_container_abbrevation}-${var.storage_container_profile}-${var.environment}-${var.location}-${var.storage_container_instance_count}"
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = var.container_access_type
}
