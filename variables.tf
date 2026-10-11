variable "secret_v1_data" {
  description = <<EOT
Map of secret_v1_data, attributes below
Required:
    - data
    - metadata (block):
        - name (required)
        - namespace (optional)
Optional:
    - field_manager
    - force
EOT

  type = map(object({
    data          = map(string)
    field_manager = optional(string)
    force         = optional(bool)
    metadata = object({
      name      = string
      namespace = optional(string)
    })
  }))
}

