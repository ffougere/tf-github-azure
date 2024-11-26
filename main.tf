<<<<<<< HEAD
provider "azurerm" {
  features {}
  #skip_provider_registration = true
  resource_provider_registrations = "none"
  subscription_id = var.subscription_id
}

resource "azurerm_mssql_server" "example" {
  name                = "ffomysqlserver"
  resource_group_name = var.rg_id
  location            = "West US"
  version             = "12.0"
  administrator_login          = "ffo"
  administrator_login_password = "Temporaire78220*"
}

resource "azurerm_mssql_database" "example" {
  name                = "mydbazuresql"
  #resource_group_name = "kml_rg_main-8968de8c223043d8"
  #server_name        = azurerm_mssql_server.example.name
  server_id           = azurerm_mssql_server.example.id
=======
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
>>>>>>> bb9720bcedf31a47560d3df71a0d006b8ae01999
}
