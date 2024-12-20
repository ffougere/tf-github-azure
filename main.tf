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
  server_id           = azurerm_mssql_server.example.id
}
