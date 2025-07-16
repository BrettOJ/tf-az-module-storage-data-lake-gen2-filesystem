name               = "fs-logs"
storage_account_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-demo/providers/Microsoft.Storage/storageAccounts/stgaccountdemo"

default_encryption_scope = "my-encryption-scope"

properties = {
  "custom-property" = "Q3VzdG9tVmFsdWU="  # Base64 encoded value
}

owner = "11111111-1111-1111-1111-111111111111"
group = "22222222-2222-2222-2222-222222222222"

ace = [
  {
    type        = "user"
    id          = "33333333-3333-3333-3333-333333333333"
    permissions = "rwx"
  },
  {
    scope       = "access"
    type        = "group"
    id          = "44444444-4444-4444-4444-444444444444"
    permissions = "r--"
  },
  {
    scope       = "default"
    type        = "other"
    permissions = "---"
  }
]
