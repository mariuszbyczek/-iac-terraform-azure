output "function_id" {
description = "zasób wyświetlający id dla azurem_function_app_function"
  value = try(azurerm_function_app_function.this.id)
}
