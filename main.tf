provider "azurerm" {
  features {}
  #skip_provider_registration = true
  resource_provider_registrations = "none"
  subscription_id = "a2b28c85-1948-4263-90ca-bade2bac4df4"
}

resource "azurerm_mssql_server" "example" {
  name                = "ffomysqlserver"
  resource_group_name = "kml_rg_main-8968de8c223043d8"
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
}
