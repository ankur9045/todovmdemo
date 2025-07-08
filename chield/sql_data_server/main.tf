
resource "azurerm_mssql_server" "example" {
  name                         = var.mysql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "thisIsKat11"


 
}