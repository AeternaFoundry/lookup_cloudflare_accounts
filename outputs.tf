output "accounts_lookup_direction" {
  description = "Map of direction values across all accounts_lookup, keyed the same as var.accounts_lookup except keys with no direction are omitted"
  value       = { for k, v in data.cloudflare_accounts.accounts_lookup : k => v.direction if v.direction != null && length(v.direction) > 0 }
}
output "accounts_lookup_max_items" {
  description = "Map of max_items values across all accounts_lookup, keyed the same as var.accounts_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_accounts.accounts_lookup : k => v.max_items if v.max_items != null }
}
output "accounts_lookup_name" {
  description = "Map of name values across all accounts_lookup, keyed the same as var.accounts_lookup except keys with no name are omitted"
  value       = { for k, v in data.cloudflare_accounts.accounts_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "accounts_lookup_result" {
  description = "Map of result values across all accounts_lookup, keyed the same as var.accounts_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_accounts.accounts_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

