output "blob url" {
description = " zasób wyświetlający url dla azurem_storage_blob"
  value = try(azurerm_storage_blob.this[0])
}
