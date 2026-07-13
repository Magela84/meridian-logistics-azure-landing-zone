output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.main.name
}

output "resource_group_location" {
  description = "The location of the resource group"
  value       = azurerm_resource_group.main.location
}

output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.main.name
}

output "virtual_network_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.main.id
}

output "subnet_general_id" {
  description = "The ID of the general subnet"
  value       = azurerm_subnet.general.id
}

output "subnet_data_id" {
  description = "The ID of the data subnet"
  value       = azurerm_subnet.data.id
}
