data "azurerm_virtual_network" "virtual_network" {
  name                = "${var.project_name}-${var.virtual_network_abbrevation}-${var.virtual_network_profile}-${var.environment}-${var.location}-${var.network_instance_count}"
  resource_group_name = var.resource_group_name
}
