resource "azurerm_resource_group" "app_rg" {
  name     = "bhun0002-bhup0006-a12-rg"
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "bhup0006-bhun0002"
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "bhup0006-subnet"
  resource_group_name  = azurerm_resource_group.app_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
