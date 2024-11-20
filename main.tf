resource "azurerm_sql_server" "example" {
  name                = "mySqlServer"
  resource_group_name = "myResourceGroup"
  location            = "West US"
  version             = "12.0"
}

resource "azurerm_sql_database" "example" {
  name                = "mydb"
  resource_group_name = "myResourceGroup"
  server_name        = azurerm_sql_server.example.name
}
