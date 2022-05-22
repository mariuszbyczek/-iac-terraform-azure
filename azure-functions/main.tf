resource "azurerm_resource_group" "this" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "this" {
  name                     = "linuxfunctionappsa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_service_plan" "this" {
  name                = "example-app-service-plan"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  os_type             = "Linux"
  sku_name            = "Y1"
}

resource "azurerm_linux_function_app" "this" {
  name                = "example-linux-function-app"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  storage_account_name = azurerm_storage_account.example.name
  service_plan_id      = azurerm_service_plan.example.id

  site_config {}
}

data "azurerm_function_app_function" "this" {
  id                =  "name 123"
  resource_group_name = azurerm_resource_group.example.name
}
