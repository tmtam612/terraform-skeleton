# config virtual network 
resource "azurerm_virtual_network" "this" {
  name                = "${var.project_name}-${var.virtual_network_abbrevation}-${var.virtual_network_profile}-${var.environment}-${var.location}-${var.network_instance_count}"
  address_space       = var.virtual_ip_address
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    env = var.environment
  }

}
resource "azurerm_subnet" "subnet" {
  for_each             = toset(var.list_subnet)
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = each.value.address_prefix
  name                 = "${var.project_name}-${var.virtual_subnet_abbrevation}-${each.value.name}-${var.environment}-${var.location}-${var.subnet_instance_count}"
  resource_group_name  = var.resource_group_name
}
