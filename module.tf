resource "azurerm_storage_data_lake_gen2_filesystem" "this" {
  name                     = var.name
  storage_account_id       = var.storage_account_id
  properties               = var.properties
  default_encryption_scope = var.default_encryption_scope
  owner                    = var.owner
  group                    = var.group

  dynamic "ace" {
    for_each = var.ace
    content {
      scope       = lookup(ace.value, "scope", null)
      type        = ace.value.type
      id          = lookup(ace.value, "id", null)
      permissions = ace.value.permissions
    }
  }
}
