variable "accounts_lookup" {
  description = <<EOT
Map of accounts_lookup, attributes below
Optional:
    - direction
    - max_items
    - name
EOT

  type = map(object({
    direction = optional(string)
    max_items = optional(number)
    name      = optional(string)
  }))
}

