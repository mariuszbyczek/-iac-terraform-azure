variable "name_resource_group" {
  description = "name_resource_group"
  type = string
  default = "example-resources"
  
}

variable "location_resource_group" {
  description = "location_resource_group"
  type = string
  default = "West Europe"
  
}
variable "name_azurerm_storage_account" {
  description = "name_azurerm_storage_account"
  type = string
  default = "linuxfunctionappsa"
  
}

variable "account_tier_azurerm_storage_account" {
  description = "account_tier_azurerm_storage_account"
  type = string
  default = "Standard"
  
}

variable "account_replication_type_azurerm_storage_account" {
  description = "account_replication_type_azurerm_storage_account"
  type = string
  default = "LRS"
  
}

variable "name_azurerm_service_plan" {
  description = "name_azurerm_service_plan"
  type = string
  default = "example-app-service-plan"
  
}

variable "os_type_azurerm_service_plan" {
  description = "os_type_azurerm_service_plan"
  type = string
  default = "Linux"
  
}

variable "sku_name_azurerm_service_plan" {
  description = "sku_name_azurerm_service_plan"
  type = string
  default = "Y1"
  
}

variable "name_azurerm_linux_function_app" {
  description = "sku_name_azurerm_service_plan"
  type = string
  default = "example-linux-function-app"
  
}

variable "id_azurerm_function_app_function" {
  description = "sku_name_azurerm_service_plan"
  type = string
  default = "1234567"
  
}
