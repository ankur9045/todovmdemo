

resource "azurerm_subnet" "frountendsbnet" {
    name = var.frountendsbnet_name
    resource_group_name = var.resource_group_name
    virtual_network_name = var.virtual_network_name
    address_prefixes = ["10.0.1.0/24"]
  
}