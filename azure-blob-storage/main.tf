resource "azurerm_resource_group" "this" {
  name     = var.name_azurerm_resource_group
  location = var.location_azurerm_resource_group
}

resource "azurerm_storage_account" "this" {
  name                     = var.name_azurerm_storage_account
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = var.tier_azurerm_storage_account
  account_replication_type = var.replication_type_azurerm_storage_account
}

resource "azurerm_storage_container" "this" {
  name                  = var.name_azurerm_storage_container
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = var.access_type_azurerm_storage_container
}

resource "azurerm_storage_blob" "this" {
  url                    = var.url_azurerm_storage_blob
  name                   = var.name_azurerm_storage_blob
  storage_account_name   = azurerm_storage_account.this.name
  storage_container_name = azurerm_storage_container.this.name
  type                   = var.type_azurerm_storage_blob
  source                 = var.source_azurerm_storage_blob
}
