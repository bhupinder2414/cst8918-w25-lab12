output "resource_group_name" {
  value       = azurerm_resource_group.app_rg.name
  description = "The name of the Azure Resource Group."
}

output "virtual_network_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The name of the Virtual Network."
}

output "subnet_name" {
  value       = azurerm_subnet.subnet.name
  description = "The name of the Subnet."
}
