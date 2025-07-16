module "datalake_filesystem" {
  source = "../"

  name                    = var.name
  storage_account_id      = var.storage_account_id
  default_encryption_scope = var.default_encryption_scope
  properties              = var.properties
  owner                   = var.owner
  group                   = var.group
  ace                     = var.ace
}
