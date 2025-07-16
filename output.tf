output "filesystem_id" {
  description = "The ID of the created Data Lake Gen2 File System."
  value       = azurerm_storage_data_lake_gen2_filesystem.this.id
}

output "filesystem_name" {
  description = "The name of the created Data Lake Gen2 File System."
  value       = azurerm_storage_data_lake_gen2_filesystem.this.name
}