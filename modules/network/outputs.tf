output "virtual_network_name" {
  value = azurerm_virtual_network.this.name
}

output "virtual_network_address_space" {
  value = data.azurerm_virtual_network.virtual_network.address_space
}