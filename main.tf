data "cloudflare_accounts" "accounts_lookup" {
  for_each = var.accounts_lookup

  direction = each.value.direction
  max_items = each.value.max_items
  name      = each.value.name
}

