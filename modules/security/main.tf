resource "azurerm_user_assigned_identity" "base" {
  name                = "${var.project_name}-${var.user_assigned_identity_abbrevation}-${var.user_assigned_identity_profile}-${var.environment}-${var.location}-${var.user_assigned_identity_instance_count}"
  location            = var.location
  resource_group_name = var.resource_group_name
}