variable "name" {
  description = "The name of the Data Lake Gen2 File System."
  type        = string
}

variable "storage_account_id" {
  description = "The ID of the Storage Account."
  type        = string
}

variable "default_encryption_scope" {
  description = "The default encryption scope for the filesystem."
  type        = string
  default     = null
}

variable "properties" {
  description = "Key to Base64-encoded values to assign as properties."
  type        = map(string)
  default     = {}
}

variable "owner" {
  description = "The Object ID of the Azure AD user to be the owner."
  type        = string
  default     = null
}

variable "group" {
  description = "The Object ID of the Azure AD group to be the owner group."
  type        = string
  default     = null
}

variable "ace" {
  description = "List of ACE (Access Control Entry) blocks."
  type = list(object({
    scope       = optional(string) # Optional
    type        = string           # Required
    id          = optional(string) # Optional
    permissions = string           # Required
  }))
  default = []
}
