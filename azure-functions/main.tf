resource "azurerm_resource_group" "this" {
  name     = var.name_resource_group
  location = var.location_resource_group
}

resource "azurerm_storage_account" "this" {
  name                     = var.name_azurerm_storage_account
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = var.account_tier_azurerm_storage_account
  account_replication_type = var.account_replication_type_azurerm_storage_account
}

resource "azurerm_service_plan" "this" {
  name                = var.name_azurerm_service_plan
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  sku_name            = var.sku_name_azurerm_service_plan
  os_type             = var.os_type_azurerm_service_plan
}

resource "azurerm_linux_function_app" "this" {
  name                = var.name_azurerm_linux_function_app
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location

  storage_account_name = azurerm_storage_account.this.name
  service_plan_id      = azurerm_service_plan.this.id

  site_config {}
}

data "azurerm_function_app_function" "this" {
  id                =  var.id_azurerm_function_app_function
  resource_group_name = azurerm_resource_group.this.name
}
