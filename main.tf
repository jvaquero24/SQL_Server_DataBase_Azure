resource "azurerm_sql_server" "SQLSERVER" {
  name                         = var.sqlserver_name
  location                     = var.location
  resource_group_name          = var.resource_group_name_dbs
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_pass

}

resource "azurerm_sql_database" "SQLDATABASE" {
  name                = var.sqldatabase_name
  location            = var.location
  resource_group_name = var.resource_group_name_dbs
  server_name         = var.serversqlname
}
